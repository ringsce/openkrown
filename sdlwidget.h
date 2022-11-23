// sdlwidget.h
#pragma once
#include <QWidget>
#include <QTimer>
#include <SDL2/SDL.h>

/* If you'd like, you can just write
 * `#define MS_PER_FRAME 17` here since that's all this is doing,
 * but I like making sure that the math is right (by not doing it myself). */
#define FRAME_RATE 60
#define MS_PER_FRAME 1000 / FRAME_RATE

class SDLWidget : public QWidget
{
public :
  SDLWidget(QWidget* parent);
  virtual ~SDLWidget() override;

/* A custom repaint slot, I'll explain this later */
public slots:
  void SDLRepaint();

protected:
  SDL_Window* window;
  SDL_Renderer* renderer;

private:
  /* To be overridden by child classes */
  virtual void Init() = 0;
  virtual void Update() = 0;
  virtual void OnResize(int w, int h) = 0;

  void resizeEvent(QResizeEvent* event) override;
  void showEvent(QShowEvent*) override;

  /* Overriding this method prevents the
   * "QWidget::paintEngine: Should no longer be called" error. */
  QPaintEngine* paintEngine() const override;

  /* Timer used to call the re-render method every 1/60th of a second */
  QTimer frameTimer;
};