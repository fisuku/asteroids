#include <SFML/Graphics/ConvexShape.hpp>
#include <entities/Bullet.h>
#include <player/PlayerSession.h>
#include <utility/drawing.h>
#include "AsteroidBase.h"

bool AsteroidBase::isRecyclable() {
  return isDestroyed();
}

void AsteroidBase::update() {
  this->pos += vel;
  this->rot += rotSpeed;
}

void AsteroidBase::renderTo(sf::RenderWindow *renderWindow) {
  auto shape = sf::ConvexShape();
  auto size = points.size();

  shape.setPointCount(size);

  for (size_t i = 0; i < size; i++) {
    shape.setPoint(i, points[i]);
  }

  shape.setFillColor(sf::Color::Transparent);
  shape.setOutlineColor(outlineColor);
  shape.setOutlineThickness(1.0F);
  shape.setPosition(pos);
  shape.setOrigin(origin.x, origin.y);
  shape.setRotation(rot);

  renderWindow->draw(shape);

  if (health < getMaxHealth()) {
    drawing::drawHealthBar(
        renderWindow,
        getHealth(),
        getMaxHealth(),
        sf::Vector2f(pos.x, pos.y + 40),
        sf::Vector2f(origin.x, 20)
    );
  }
}

void AsteroidBase::onBulletHit(Bullet *bullet) {
  // take damage
  takeDamage(10);
  vel.x += bullet->vel.x / 30;
  vel.y += bullet->vel.y / 30;
  bullet->setLifetime(0);

  if (isDestroyed()) {
    auto session = bullet->getOwner();
    session->setScore(session->getScore() + getScoreValue());
  }
}

void AsteroidBase::onAsteroidHit(AsteroidBase *other) {
  // bounce
  auto diff = vel - other->vel;
  diff.x /= 1.1;
  diff.y /= 1.1;

  vel -= diff;
  other->vel += diff;

  auto rotDiff = rotSpeed - other->rotSpeed;
  rotDiff /= 10.0;

  rotSpeed -= rotDiff;
  other->rotSpeed += rotDiff;
}

void AsteroidBase::onShipHit(Ship *other) {
  if (!other->isOnInvincibilityCooldown()) {
    other->onDestroyed();
  }
}

void AsteroidBase::onCollision(AbstractWorldObject *other) {
  if (other->getClass() == WorldObjectClass::BULLET) {
    onBulletHit(dynamic_cast<Bullet *>(other));
  }

  if (other->getClass() == WorldObjectClass::ASTEROID) {
    onAsteroidHit(dynamic_cast<AsteroidBase *>(other));
  }

  if (other->getClass() == WorldObjectClass::SHIP) {
    onShipHit(dynamic_cast<Ship *>(other));
  }
}