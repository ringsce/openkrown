// sdlwidget.cpp
#include <sdlwidget.h>

SDLWidget::SDLWidget(QWidget *parent) : QWidget(parent) {
  // These widget attributes are important. This lets SDL take over what's
  // drawn onto the widget's screen space. 
  setAttribute(Qt::WA_OpaquePaintEvent);
  setAttribute(Qt::WA_NoSystemBackground);
  setFocusPolicy(Qt::StrongFocus);
  // HOWEVER, this important attribute stops the "paintEvent" slot from being called,
  // thus we'll need to write our own method that paints to the screen every frame.
  setAttribute(Qt::WA_PaintOnScreen);

  // Create an SDL window from the widget's native handle.
  window = SDL_CreateWindowFrom(reinterpret_cast<void*>(winId()));
  if(window == NULL)
    throw "Can't create window: " + std::string(SDL_GetError());

  // Create a renderer from the window. We'll use this for drawing all our stuff.
  // (NOTE this doesn't have the VSYNC flag. 
  //  It'd cause HEAVY flickering, so we'll do our own vsync.)
  renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
  if(renderer == NULL)
    throw "Can't create renderer: " + std::string(SDL_GetError());
}