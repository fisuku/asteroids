//
// Created by fisk on 21/09/17.
//

#ifndef ASTEROIDS_PLAYERSESSION_H
#define ASTEROIDS_PLAYERSESSION_H

#include "Player.h"
class PlayerSession {
 private:
  Player *player;
  int score;
  int lives;

 public:
  PlayerSession(Player *player, int lives = 5) {
    this->player = player;
    this->lives = lives;
    this->score = 0;
  }

  inline Player *getPlayer() const { return player; }

  inline int getScore() const { return score; }
  inline void setScore(int score) { PlayerSession::score = score; }

  inline int getLives() const { return lives; }
  inline void setLives(int lives) { this->lives = lives; }

  bool decrementLives() {
    if (this->lives > 0) {
      this->lives--;
      return true;
    }

    return false;
  }
};

#endif //ASTEROIDS_PLAYERSESSION_H