#pragma once

#include "AsteroidBase.h"
class MediumAsteroid : public AsteroidBase {
 public:
  explicit MediumAsteroid(WorldInterface *world) : AsteroidBase(world) {
    points.emplace_back(15, 0);
    points.emplace_back(30, 7.5f);
    points.emplace_back(30, 21.5f);
    points.emplace_back(15, 30);
    points.emplace_back(0, 21.5f);
    points.emplace_back(0, 7.5f);
    origin = sf::Vector2f(15, 15);
    this->health = this->getMaxHealth();
  }

  inline int getMaxHealth() override {
    return 30;
  }

  void onDestroyed() override;
};

