//
// Created by fisk on 21/09/17.
//

#include <SFML/Graphics/RectangleShape.hpp>
#include "LargeAsteroid.h"
#include "MediumAsteroid.h"

void LargeAsteroid::onDestroyed() {
  auto ast1 = new MediumAsteroid(world);
  ast1->pos.x = pos.x - 15;
  ast1->pos.y = pos.y;
  ast1->vel.x = -3.0f;
  ast1->vel.y = 3.0f;

  world->pushObject(ast1);

  auto ast2 = new MediumAsteroid(world);
  ast2->pos.x = pos.x + 15;
  ast2->pos.y = pos.y;
  ast2->vel.x = 3.0f;
  ast2->vel.y = -3.0f;

  world->pushObject(ast2);
}
