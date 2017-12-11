#pragma once

#include <Asteroids.h>
#include "SceneInterface.h"
class HighScoreTableScene : public SceneInterface {
 private:
 private:
  Asteroids *game;
  ControllerInterface *controller;

 public:
  explicit HighScoreTableScene(Asteroids *game) {
    this->game = game;
    this->controller = game->getDefaultController();
  }
  void render(RendererInterface *renderer) override;
  void handleEvents() override;
  void onVisible() override;
  void onDestroy() override;
};
