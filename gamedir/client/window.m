#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import <CoreVideo/CVDisplayLink.h>
@interface SxgeView : NSOpenGLView <NSWindowDelegate>
-(void)registerDisplayLink;
-(void)renderForTime:(CVTimeStamp)time;
-(void)windowWillClose:(NSNotification*)note;
@end
CVReturn displayCallback(CVDisplayLinkRef displayLink,
const CVTimeStamp *inNow, const CVTimeStamp *inOutputTime,
	CVOptionFlags flagsIn, CVOptionFlags *flagsOut,
void *displayLinkContext)
{
	SxgeView *view = (SxgeView*)displayLinkContext;
	[view renderForTime: *inOutputTime];
return kCVReturnSuccess;
}
@implementation SxgeView
{
	CVDisplayLinkRef displayLink;
}
-(id)initWithFrame:(NSRect)frameRect pixelFormat:(NSOpenGLPixelFormat*)format
{
	self = [super initWithFrame:frameRect pixelFormat:format];
	[self registerDisplayLink];
return self;
}
-(void)registerDisplayLink
{
CGDirectDisplayID displayID = CGMainDisplayID();
	CVReturn error = CVDisplayLinkCreateWithCGDisplay(displayID, &displayLink);
NSAssert((kCVReturnSuccess == error),
		@"Creating Display Link error %d", error);
	error = CVDisplayLinkSetOutputCallback(displayLink, displayCallback, self);
NSAssert((kCVReturnSuccess == error),
		@"Setting Display Link callback error %d", error);
CVDisplayLinkStart(displayLink);
}
-(void)renderForTime:(CVTimeStamp)time
{
NSLog(@"Render");
//CGLContextObj contextObj = [[self openGLContext] CGLContextObj];
//CGLLockContext(contextObj);
//[self lockFocus];
if ([self lockFocusIfCanDraw] == NO) {
return;
	}
	[[self openGLContext] makeCurrentContext];
static int i = 0;
double s = sin((i++ % 628) / 100.0);
glClearColor(0.0, 0.0, s >= 0 ? s : -s, 1.0);
glClear(GL_COLOR_BUFFER_BIT);
	[[self openGLContext] flushBuffer];
	[self unlockFocus];
//CGLUnlockContext(contextObj);
}
-(void)dealloc
{
	[super dealloc];
}
-(void)windowWillClose:(NSNotification *)note {
CVDisplayLinkRelease(displayLink);
	[[NSApplication sharedApplication] terminate:self];
}
@end
@interface GLController : NSWindow
-(void)createGLView;
@property(nonatomic, readwrite, retain) SxgeView *glView;
@end
@implementation GLController
-(id)init
{
	self = [super initWithContentRect: NSMakeRect(0, 0, 640, 480)
styleMask: NSTitledWindowMask|NSResizableWindowMask|
NSClosableWindowMask|NSMiniaturizableWindowMask
backing: NSBackingStoreBuffered
defer: false];
	[self setTitle: @"Opengl Test"];
	[self center];
	[self createGLView];
	[self setDelegate:[self glView]];
	[self makeKeyAndOrderFront:nil];
	[self display];
return self;
}
-(void)createGLView
{
NSOpenGLPixelFormatAttribute attribs[] = {
NSOpenGLPFAOpenGLProfile, NSOpenGLProfileVersion3_2Core,
NSOpenGLPFAColorSize, 24,
NSOpenGLPFAAlphaSize, 8,
NSOpenGLPFADoubleBuffer,
NSOpenGLPFAAccelerated,
NSOpenGLPFANoRecovery,
NSOpenGLPFAClosestPolicy,
0,
	};
NSOpenGLPixelFormat *pixelFormat =
	[
		[[NSOpenGLPixelFormat alloc]
initWithAttributes:attribs]
	autorelease];
	[self setGlView:
		[
			[[SxgeView alloc]
initWithFrame: [[self contentView] bounds]
pixelFormat:pixelFormat]
autorelease]
	];
	[self setContentView:[self glView]];
}
-(void)dealloc
{
	[[self glView] release];
	[super dealloc];
}
@end
int main(int argc, char** argv) {
NSAutoreleasePool *pool = [NSAutoreleasePool new];
NSApplication *app = [NSApplication sharedApplication];
	GLController *controller = [[GLController alloc] init];
	[app run];
	[pool release];
return 0;
}