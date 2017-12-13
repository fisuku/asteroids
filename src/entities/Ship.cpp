#include <cmath>
#include <SFML/Graphics/RectangleShape.hpp>
#include <SFML/Graphics/CircleShape.hpp>
#include <SFML/Graphics/ConvexShape.hpp>
#include <scenes/GameScene.h>
#include "Bullet.h"
#include "../utility/vector.h"

void Ship::fireBullet() {
  auto thisRot = vector::fromAngle(rot);
  auto velocity = thisRot * 5.0F;
  auto bullet = new Bullet(world, this->getPlayerSession());

  bullet->pos.x = pos.x + thisRot.x * 10;
  bullet->pos.y = pos.y + thisRot.y * 10;
  bullet->vel = velocity + vel;
  bullet->rot = rot;

  vel.x -= bullet->vel.x / 100;
  vel.y -= bullet->vel.y / 100;

  world->pushObject(bullet);
}

void Ship::update() {
  if (fireCooldown != 0) {
    fireCooldown--;
  } else if (isFiring) {
    fireBullet();
    fireCooldown = FIRE_RATE;
  }

  isFiring = false;

  if (isFiringAltWeapon) {
    for (int i = 0; i < 360; i++) {
      auto thisRot = vector::fromAngle(i);
      auto velocity = thisRot * 5.0F;
      auto bullet = new Bullet(world, this->getPlayerSession());
      bullet->pos.x = pos.x + thisRot.x * 10;
      bullet->pos.y = pos.y + thisRot.y * 10;
      bullet->vel = velocity + vel;
      bullet->rot = rot;
      world->pushObject(bullet);
    }
  }

  isFiringAltWeapon = false;

  vel += acc;
  acc = {0, 0};
  vel = vector::limit(vel, MAX_SPEED);
  this->pos += vel;

  vel *= 0.99F;

  if (isOnInvincibilityCooldown()) {
    invincibilityTimer--;
  }
}

void Ship::onDestroyed() {
  auto scene = dynamic_cast<GameScene *>(world->getGame()->getScene());
  scene->onShipDestroyed(playerSession);
  world->popObject(this);
}

void Ship::onAction(InputAction action) {
  if (action == InputAction::ACCELERATE) {
    // get the current speed
    auto target = vector::fromAngle(rot) * MAX_SPEED;
    auto diff = target - acc;

    diff *= 0.10F;

    acc.x = diff.x;
    acc.y = diff.y;

//    printf("pos: %.2f, %.2f vel: %.2f, %.2f acc: %.2f, %.2f\n", pos.x, pos.y, vel.x, vel.y, acc.x, acc.y);
    isThrusting = true;
  }

  if (action == InputAction::BRAKE) {
    // really we're just going in reverse
    auto target = vector::fromAngle(rot) * MAX_SPEED;
    auto diff = target - acc;

    diff *= 0.10F;

    acc.x = -diff.x;
    acc.y = -diff.y;
  }

  if (action == InputAction::LEFT) {
    rot -= MAX_ROTATE_SPEED;

    if (rot < -180) {
      rot += 360;
    }
  }

  if (action == InputAction::RIGHT) {
    rot += MAX_ROTATE_SPEED;

    if (rot > 180) {
      rot -= 360;
    }
  }

  if (action == InputAction::FIRE) {
    isFiring = true;
  }

  if (action == InputAction::ALTFIRE) {
    isFiringAltWeapon = true;
  }

  if (action == InputAction::PANIC) {
    onDestroyed();
  }

  if (action == InputAction::PAUSE) {
    auto scene = dynamic_cast<GameScene *>(world->getGame()->getScene());
    scene->pause(this->playerSession);
  }
}

void Ship::renderTo(sf::RenderWindow *renderWindow) {
  renderShip(renderWindow);

  if (isThrusting) {
    renderThruster(renderWindow);
    isThrusting = false;
  }
}

void Ship::renderShip(sf::RenderWindow *renderWindow) {
  auto shape = sf::ConvexShape();
  auto size = points.size();

  shape.setPointCount(size);

  for (size_t i = 0; i < size; i++) {
    shape.setPoint(i, points[i]);
  }

  shape.setFillColor(sf::Color::Transparent);

  bool invisible = (invincibilityTimer / 3 % 2 != 0);

  if (invisible) {
    shape.setOutlineColor(sf::Color(50, 50, 50));
  } else {
    shape.setOutlineColor(getPlayerSession()->getPlayer()->getColor());
  }

  shape.setOutlineThickness(1.0F);
  shape.setOrigin(origin.x, origin.y);
  shape.setRotation(rot);

  shape.setPosition(pos);
  renderWindow->draw(shape);
}

void Ship::renderThruster(sf::RenderWindow *renderWindow) {
  auto thruster = sf::ConvexShape();
  thruster.setPointCount(3);
  thruster.setPoint(0, {-2, 8});
  thruster.setPoint(1, {0, 7});
  thruster.setPoint(2, {0, 9});
  thruster.setOutlineColor(sf::Color(255, 93, 0));
  thruster.setOutlineThickness(1.0F);
  thruster.setFillColor(sf::Color::Transparent);
  thruster.setOrigin(origin.x, origin.y);
  thruster.setRotation(rot);
  thruster.setPosition(pos);
  renderWindow->draw(thruster);
}

void Ship::onCollision(AbstractWorldObject *other) {
  if (other->getClass() == WorldObjectClass::SHIP) {
    onShipHit(dynamic_cast<Ship *>(other));
  }
}

void Ship::onShipHit(Ship *other) {
  // bounce
  auto diff = vel - other->vel;
  diff.x /= 1.1;
  diff.y /= 1.1;

  vel -= diff;
  other->vel += diff;
}