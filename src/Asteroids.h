//
// Created by fisk on 24/09/17.
//

#ifndef ASTEROIDS_ASTEROIDS_H
#define ASTEROIDS_ASTEROIDS_H

#include <vector>
#include <SFML/Window/Keyboard.hpp>
#include "GameInterface.h"
#include "PlayerSession.h"
#include "HighScores.h"

class Asteroids : public GameInterface {
 private:
  std::vector<PlayerSession *> *sessions;
  HighScores highScores;

 public:
  inline Asteroids() : GameInterface() {
    sessions = new std::vector<PlayerSession *>();
  }

  inline std::vector<PlayerSession *> *getSessions() const {
    return sessions;
  }

  void main() override;

  inline HighScores getHighScores() const {
    return highScores;
  }

  ControllerInterface *getDefaultController();
};

#endif //ASTEROIDS_ASTEROIDS_H
