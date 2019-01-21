#pragma once

#include "AbstractWorldObject.h"
#include "player/Player.h"
#include <SFML/Graphics/ConvexShape.hpp>
#include <particles/ParticleSystem.h>

class PlayerSession;

class Ship : public AbstractWorldObject, public ControllerListenerInterface {
 private:
  const float MAX_SPEED = 4.0F;
  const float MAX_ROTATE_SPEED = 5.0F;
  const int FIRE_RATE = 5;
  const int ALT_FIRE_RATE = 20;

  sf::ConvexShape shape;
  ParticleSystem particleSystem;
  PlayerSession *playerSession;
  int altFireCooldown = 0;
  int fireCooldown = 0;
  bool isFiring = false;
  bool isFiringAltWeapon = false;
  bool isDestroyed = false;
  bool isThrusting = false;
  int invincibilityTimer = 100; // initial invincibility time on spawn in frames
  const sf::Color fillColor = sf::Color(255, 255, 255, 25);

 public:
  std::string getClass() override {
    return "ship";
  }

  explicit Ship(WorldInterface *world, PlayerSession *playerSession);
  ~Ship() override = default;

  void onAction(InputAction action, bool once) override;
  void update() override;
  bool isRecyclable() override;
  void onDestroyed();

  PlayerSession *getPlayerSession() { return playerSession; }

  void onCollision(AbstractWorldObject *other) override;
  void onShipHit(Ship *other);

  void renderTo(sf::RenderWindow *renderWindow) override;
  void renderThruster(sf::RenderWindow *renderWindow);
  void renderShip(sf::RenderWindow *renderWindow);

  bool isOnInvincibilityCooldown() { return invincibilityTimer > 0; }
  void setInvincibilityCooldown(int cooldown) { invincibilityTimer = cooldown; }

  void fireBullet();
  void fireAltWeapon();
};