#include <gtest/gtest.h>
#include <entities/Asteroid.cpp>
#include <world/World.cpp>
#include <Asteroids.h>

TEST(game_world, obj_wrap) {
  auto game = Asteroids();
  auto world = World(&game, 10, 10);

  auto object = new Asteroid(&world);
  object->pos.x = 5;
  object->pos.y = 5;

  world.wrapObject(object);

  EXPECT_EQ(5, object->pos.x);

  object->pos.y = 11;
  world.wrapObject(object);

  EXPECT_EQ(1, object->pos.y);

  object->pos.y = -5;
  world.wrapObject(object);

  EXPECT_EQ(5, object->pos.y);

  object->pos.x = 13;
  world.wrapObject(object);

  EXPECT_EQ(3, object->pos.x);

  object->pos.x = -5;
  world.wrapObject(object);

  EXPECT_EQ(5, object->pos.x);
}

TEST(game_world, obj_management) {
  auto game = Asteroids();
  auto world = World(&game, 10, 10);

  auto object = Asteroid(&world);
  auto object2 = Asteroid(&world);

  EXPECT_TRUE(world.pushObject(&object));
  EXPECT_FALSE(world.pushObject(&object));
  EXPECT_EQ(1, world.getObjects().size());

  EXPECT_TRUE(world.pushObject(&object2));
  EXPECT_FALSE(world.pushObject(&object2));
  EXPECT_EQ(2, world.getObjects().size());

  EXPECT_TRUE(world.popObject(&object));
  EXPECT_EQ(1, world.getObjects().size());

  EXPECT_FALSE(world.popObject(&object));
  EXPECT_EQ(1, world.getObjects().size());
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}