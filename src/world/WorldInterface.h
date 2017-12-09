//
// Created by fisk on 09/12/17.
//

#ifndef ASTEROIDS_WORLDINTERFACE_H
#define ASTEROIDS_WORLDINTERFACE_H

#include <entities/WorldObjectInterface.h>
#include <entities/AbstractWorldObject.h>

class GameInterface;
class AbstractWorldObject;

class WorldInterface {
 public:
  virtual double getWidth() const = 0;
  virtual double getHeight() const = 0;

  virtual void wrapObject(WorldObjectInterface *object) = 0;

  virtual bool pushObject(AbstractWorldObject *object) = 0;

  virtual bool popObject(AbstractWorldObject *object) = 0;

  virtual void update() = 0;

  virtual GameInterface *getGame() = 0;
};

#endif //ASTEROIDS_WORLDINTERFACE_H