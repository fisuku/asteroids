# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/fisk/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/fisk/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fisk/c++/asteroids

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fisk/c++/asteroids

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/home/fisk/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/home/fisk/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/home/fisk/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/fisk/c++/asteroids/CMakeFiles /home/fisk/c++/asteroids/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/fisk/c++/asteroids/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named asteroids_test

# Build rule for target.
asteroids_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 asteroids_test
.PHONY : asteroids_test

# fast build rule for target.
asteroids_test/fast:
	$(MAKE) -f CMakeFiles/asteroids_test.dir/build.make CMakeFiles/asteroids_test.dir/build
.PHONY : asteroids_test/fast

#=============================================================================
# Target rules for targets named asteroids

# Build rule for target.
asteroids: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 asteroids
.PHONY : asteroids

# fast build rule for target.
asteroids/fast:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/build
.PHONY : asteroids/fast

src/Asteroids.o: src/Asteroids.cpp.o

.PHONY : src/Asteroids.o

# target to build an object file
src/Asteroids.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/Asteroids.cpp.o
.PHONY : src/Asteroids.cpp.o

src/Asteroids.i: src/Asteroids.cpp.i

.PHONY : src/Asteroids.i

# target to preprocess a source file
src/Asteroids.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/Asteroids.cpp.i
.PHONY : src/Asteroids.cpp.i

src/Asteroids.s: src/Asteroids.cpp.s

.PHONY : src/Asteroids.s

# target to generate assembly for a file
src/Asteroids.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/Asteroids.cpp.s
.PHONY : src/Asteroids.cpp.s

src/GameInterface.o: src/GameInterface.cpp.o

.PHONY : src/GameInterface.o

# target to build an object file
src/GameInterface.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/GameInterface.cpp.o
.PHONY : src/GameInterface.cpp.o

src/GameInterface.i: src/GameInterface.cpp.i

.PHONY : src/GameInterface.i

# target to preprocess a source file
src/GameInterface.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/GameInterface.cpp.i
.PHONY : src/GameInterface.cpp.i

src/GameInterface.s: src/GameInterface.cpp.s

.PHONY : src/GameInterface.s

# target to generate assembly for a file
src/GameInterface.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/GameInterface.cpp.s
.PHONY : src/GameInterface.cpp.s

src/PlayerSession.o: src/PlayerSession.cpp.o

.PHONY : src/PlayerSession.o

# target to build an object file
src/PlayerSession.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/PlayerSession.cpp.o
.PHONY : src/PlayerSession.cpp.o

src/PlayerSession.i: src/PlayerSession.cpp.i

.PHONY : src/PlayerSession.i

# target to preprocess a source file
src/PlayerSession.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/PlayerSession.cpp.i
.PHONY : src/PlayerSession.cpp.i

src/PlayerSession.s: src/PlayerSession.cpp.s

.PHONY : src/PlayerSession.s

# target to generate assembly for a file
src/PlayerSession.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/PlayerSession.cpp.s
.PHONY : src/PlayerSession.cpp.s

src/collision/SATCollisionModel.o: src/collision/SATCollisionModel.cpp.o

.PHONY : src/collision/SATCollisionModel.o

# target to build an object file
src/collision/SATCollisionModel.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/collision/SATCollisionModel.cpp.o
.PHONY : src/collision/SATCollisionModel.cpp.o

src/collision/SATCollisionModel.i: src/collision/SATCollisionModel.cpp.i

.PHONY : src/collision/SATCollisionModel.i

# target to preprocess a source file
src/collision/SATCollisionModel.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/collision/SATCollisionModel.cpp.i
.PHONY : src/collision/SATCollisionModel.cpp.i

src/collision/SATCollisionModel.s: src/collision/SATCollisionModel.cpp.s

.PHONY : src/collision/SATCollisionModel.s

# target to generate assembly for a file
src/collision/SATCollisionModel.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/collision/SATCollisionModel.cpp.s
.PHONY : src/collision/SATCollisionModel.cpp.s

src/entities/Bullet.o: src/entities/Bullet.cpp.o

.PHONY : src/entities/Bullet.o

# target to build an object file
src/entities/Bullet.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/Bullet.cpp.o
.PHONY : src/entities/Bullet.cpp.o

src/entities/Bullet.i: src/entities/Bullet.cpp.i

.PHONY : src/entities/Bullet.i

# target to preprocess a source file
src/entities/Bullet.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/Bullet.cpp.i
.PHONY : src/entities/Bullet.cpp.i

src/entities/Bullet.s: src/entities/Bullet.cpp.s

.PHONY : src/entities/Bullet.s

# target to generate assembly for a file
src/entities/Bullet.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/Bullet.cpp.s
.PHONY : src/entities/Bullet.cpp.s

src/entities/Ship.o: src/entities/Ship.cpp.o

.PHONY : src/entities/Ship.o

# target to build an object file
src/entities/Ship.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/Ship.cpp.o
.PHONY : src/entities/Ship.cpp.o

src/entities/Ship.i: src/entities/Ship.cpp.i

.PHONY : src/entities/Ship.i

# target to preprocess a source file
src/entities/Ship.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/Ship.cpp.i
.PHONY : src/entities/Ship.cpp.i

src/entities/Ship.s: src/entities/Ship.cpp.s

.PHONY : src/entities/Ship.s

# target to generate assembly for a file
src/entities/Ship.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/Ship.cpp.s
.PHONY : src/entities/Ship.cpp.s

src/entities/asteroids/AsteroidBase.o: src/entities/asteroids/AsteroidBase.cpp.o

.PHONY : src/entities/asteroids/AsteroidBase.o

# target to build an object file
src/entities/asteroids/AsteroidBase.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/AsteroidBase.cpp.o
.PHONY : src/entities/asteroids/AsteroidBase.cpp.o

src/entities/asteroids/AsteroidBase.i: src/entities/asteroids/AsteroidBase.cpp.i

.PHONY : src/entities/asteroids/AsteroidBase.i

# target to preprocess a source file
src/entities/asteroids/AsteroidBase.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/AsteroidBase.cpp.i
.PHONY : src/entities/asteroids/AsteroidBase.cpp.i

src/entities/asteroids/AsteroidBase.s: src/entities/asteroids/AsteroidBase.cpp.s

.PHONY : src/entities/asteroids/AsteroidBase.s

# target to generate assembly for a file
src/entities/asteroids/AsteroidBase.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/AsteroidBase.cpp.s
.PHONY : src/entities/asteroids/AsteroidBase.cpp.s

src/entities/asteroids/LargeAsteroid.o: src/entities/asteroids/LargeAsteroid.cpp.o

.PHONY : src/entities/asteroids/LargeAsteroid.o

# target to build an object file
src/entities/asteroids/LargeAsteroid.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/LargeAsteroid.cpp.o
.PHONY : src/entities/asteroids/LargeAsteroid.cpp.o

src/entities/asteroids/LargeAsteroid.i: src/entities/asteroids/LargeAsteroid.cpp.i

.PHONY : src/entities/asteroids/LargeAsteroid.i

# target to preprocess a source file
src/entities/asteroids/LargeAsteroid.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/LargeAsteroid.cpp.i
.PHONY : src/entities/asteroids/LargeAsteroid.cpp.i

src/entities/asteroids/LargeAsteroid.s: src/entities/asteroids/LargeAsteroid.cpp.s

.PHONY : src/entities/asteroids/LargeAsteroid.s

# target to generate assembly for a file
src/entities/asteroids/LargeAsteroid.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/LargeAsteroid.cpp.s
.PHONY : src/entities/asteroids/LargeAsteroid.cpp.s

src/entities/asteroids/MediumAsteroid.o: src/entities/asteroids/MediumAsteroid.cpp.o

.PHONY : src/entities/asteroids/MediumAsteroid.o

# target to build an object file
src/entities/asteroids/MediumAsteroid.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/MediumAsteroid.cpp.o
.PHONY : src/entities/asteroids/MediumAsteroid.cpp.o

src/entities/asteroids/MediumAsteroid.i: src/entities/asteroids/MediumAsteroid.cpp.i

.PHONY : src/entities/asteroids/MediumAsteroid.i

# target to preprocess a source file
src/entities/asteroids/MediumAsteroid.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/MediumAsteroid.cpp.i
.PHONY : src/entities/asteroids/MediumAsteroid.cpp.i

src/entities/asteroids/MediumAsteroid.s: src/entities/asteroids/MediumAsteroid.cpp.s

.PHONY : src/entities/asteroids/MediumAsteroid.s

# target to generate assembly for a file
src/entities/asteroids/MediumAsteroid.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/MediumAsteroid.cpp.s
.PHONY : src/entities/asteroids/MediumAsteroid.cpp.s

src/entities/asteroids/SmallAsteroid.o: src/entities/asteroids/SmallAsteroid.cpp.o

.PHONY : src/entities/asteroids/SmallAsteroid.o

# target to build an object file
src/entities/asteroids/SmallAsteroid.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/SmallAsteroid.cpp.o
.PHONY : src/entities/asteroids/SmallAsteroid.cpp.o

src/entities/asteroids/SmallAsteroid.i: src/entities/asteroids/SmallAsteroid.cpp.i

.PHONY : src/entities/asteroids/SmallAsteroid.i

# target to preprocess a source file
src/entities/asteroids/SmallAsteroid.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/SmallAsteroid.cpp.i
.PHONY : src/entities/asteroids/SmallAsteroid.cpp.i

src/entities/asteroids/SmallAsteroid.s: src/entities/asteroids/SmallAsteroid.cpp.s

.PHONY : src/entities/asteroids/SmallAsteroid.s

# target to generate assembly for a file
src/entities/asteroids/SmallAsteroid.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/entities/asteroids/SmallAsteroid.cpp.s
.PHONY : src/entities/asteroids/SmallAsteroid.cpp.s

src/input/KeyboardController.o: src/input/KeyboardController.cpp.o

.PHONY : src/input/KeyboardController.o

# target to build an object file
src/input/KeyboardController.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/input/KeyboardController.cpp.o
.PHONY : src/input/KeyboardController.cpp.o

src/input/KeyboardController.i: src/input/KeyboardController.cpp.i

.PHONY : src/input/KeyboardController.i

# target to preprocess a source file
src/input/KeyboardController.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/input/KeyboardController.cpp.i
.PHONY : src/input/KeyboardController.cpp.i

src/input/KeyboardController.s: src/input/KeyboardController.cpp.s

.PHONY : src/input/KeyboardController.s

# target to generate assembly for a file
src/input/KeyboardController.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/input/KeyboardController.cpp.s
.PHONY : src/input/KeyboardController.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/renderer/Renderer.o: src/renderer/Renderer.cpp.o

.PHONY : src/renderer/Renderer.o

# target to build an object file
src/renderer/Renderer.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/renderer/Renderer.cpp.o
.PHONY : src/renderer/Renderer.cpp.o

src/renderer/Renderer.i: src/renderer/Renderer.cpp.i

.PHONY : src/renderer/Renderer.i

# target to preprocess a source file
src/renderer/Renderer.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/renderer/Renderer.cpp.i
.PHONY : src/renderer/Renderer.cpp.i

src/renderer/Renderer.s: src/renderer/Renderer.cpp.s

.PHONY : src/renderer/Renderer.s

# target to generate assembly for a file
src/renderer/Renderer.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/renderer/Renderer.cpp.s
.PHONY : src/renderer/Renderer.cpp.s

src/scenes/GameOverScene.o: src/scenes/GameOverScene.cpp.o

.PHONY : src/scenes/GameOverScene.o

# target to build an object file
src/scenes/GameOverScene.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/GameOverScene.cpp.o
.PHONY : src/scenes/GameOverScene.cpp.o

src/scenes/GameOverScene.i: src/scenes/GameOverScene.cpp.i

.PHONY : src/scenes/GameOverScene.i

# target to preprocess a source file
src/scenes/GameOverScene.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/GameOverScene.cpp.i
.PHONY : src/scenes/GameOverScene.cpp.i

src/scenes/GameOverScene.s: src/scenes/GameOverScene.cpp.s

.PHONY : src/scenes/GameOverScene.s

# target to generate assembly for a file
src/scenes/GameOverScene.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/GameOverScene.cpp.s
.PHONY : src/scenes/GameOverScene.cpp.s

src/scenes/GameScene.o: src/scenes/GameScene.cpp.o

.PHONY : src/scenes/GameScene.o

# target to build an object file
src/scenes/GameScene.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/GameScene.cpp.o
.PHONY : src/scenes/GameScene.cpp.o

src/scenes/GameScene.i: src/scenes/GameScene.cpp.i

.PHONY : src/scenes/GameScene.i

# target to preprocess a source file
src/scenes/GameScene.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/GameScene.cpp.i
.PHONY : src/scenes/GameScene.cpp.i

src/scenes/GameScene.s: src/scenes/GameScene.cpp.s

.PHONY : src/scenes/GameScene.s

# target to generate assembly for a file
src/scenes/GameScene.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/GameScene.cpp.s
.PHONY : src/scenes/GameScene.cpp.s

src/scenes/HighScoreTableScene.o: src/scenes/HighScoreTableScene.cpp.o

.PHONY : src/scenes/HighScoreTableScene.o

# target to build an object file
src/scenes/HighScoreTableScene.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/HighScoreTableScene.cpp.o
.PHONY : src/scenes/HighScoreTableScene.cpp.o

src/scenes/HighScoreTableScene.i: src/scenes/HighScoreTableScene.cpp.i

.PHONY : src/scenes/HighScoreTableScene.i

# target to preprocess a source file
src/scenes/HighScoreTableScene.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/HighScoreTableScene.cpp.i
.PHONY : src/scenes/HighScoreTableScene.cpp.i

src/scenes/HighScoreTableScene.s: src/scenes/HighScoreTableScene.cpp.s

.PHONY : src/scenes/HighScoreTableScene.s

# target to generate assembly for a file
src/scenes/HighScoreTableScene.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/HighScoreTableScene.cpp.s
.PHONY : src/scenes/HighScoreTableScene.cpp.s

src/scenes/MainMenuScene.o: src/scenes/MainMenuScene.cpp.o

.PHONY : src/scenes/MainMenuScene.o

# target to build an object file
src/scenes/MainMenuScene.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/MainMenuScene.cpp.o
.PHONY : src/scenes/MainMenuScene.cpp.o

src/scenes/MainMenuScene.i: src/scenes/MainMenuScene.cpp.i

.PHONY : src/scenes/MainMenuScene.i

# target to preprocess a source file
src/scenes/MainMenuScene.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/MainMenuScene.cpp.i
.PHONY : src/scenes/MainMenuScene.cpp.i

src/scenes/MainMenuScene.s: src/scenes/MainMenuScene.cpp.s

.PHONY : src/scenes/MainMenuScene.s

# target to generate assembly for a file
src/scenes/MainMenuScene.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/scenes/MainMenuScene.cpp.s
.PHONY : src/scenes/MainMenuScene.cpp.s

src/utility/drawing.o: src/utility/drawing.cpp.o

.PHONY : src/utility/drawing.o

# target to build an object file
src/utility/drawing.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/utility/drawing.cpp.o
.PHONY : src/utility/drawing.cpp.o

src/utility/drawing.i: src/utility/drawing.cpp.i

.PHONY : src/utility/drawing.i

# target to preprocess a source file
src/utility/drawing.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/utility/drawing.cpp.i
.PHONY : src/utility/drawing.cpp.i

src/utility/drawing.s: src/utility/drawing.cpp.s

.PHONY : src/utility/drawing.s

# target to generate assembly for a file
src/utility/drawing.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/utility/drawing.cpp.s
.PHONY : src/utility/drawing.cpp.s

src/utility/vector.o: src/utility/vector.cpp.o

.PHONY : src/utility/vector.o

# target to build an object file
src/utility/vector.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/utility/vector.cpp.o
.PHONY : src/utility/vector.cpp.o

src/utility/vector.i: src/utility/vector.cpp.i

.PHONY : src/utility/vector.i

# target to preprocess a source file
src/utility/vector.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/utility/vector.cpp.i
.PHONY : src/utility/vector.cpp.i

src/utility/vector.s: src/utility/vector.cpp.s

.PHONY : src/utility/vector.s

# target to generate assembly for a file
src/utility/vector.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/utility/vector.cpp.s
.PHONY : src/utility/vector.cpp.s

src/world/World.o: src/world/World.cpp.o

.PHONY : src/world/World.o

# target to build an object file
src/world/World.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/world/World.cpp.o
.PHONY : src/world/World.cpp.o

src/world/World.i: src/world/World.cpp.i

.PHONY : src/world/World.i

# target to preprocess a source file
src/world/World.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/world/World.cpp.i
.PHONY : src/world/World.cpp.i

src/world/World.s: src/world/World.cpp.s

.PHONY : src/world/World.s

# target to generate assembly for a file
src/world/World.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids.dir/build.make CMakeFiles/asteroids.dir/src/world/World.cpp.s
.PHONY : src/world/World.cpp.s

test/asteroids_tests.o: test/asteroids_tests.cpp.o

.PHONY : test/asteroids_tests.o

# target to build an object file
test/asteroids_tests.cpp.o:
	$(MAKE) -f CMakeFiles/asteroids_test.dir/build.make CMakeFiles/asteroids_test.dir/test/asteroids_tests.cpp.o
.PHONY : test/asteroids_tests.cpp.o

test/asteroids_tests.i: test/asteroids_tests.cpp.i

.PHONY : test/asteroids_tests.i

# target to preprocess a source file
test/asteroids_tests.cpp.i:
	$(MAKE) -f CMakeFiles/asteroids_test.dir/build.make CMakeFiles/asteroids_test.dir/test/asteroids_tests.cpp.i
.PHONY : test/asteroids_tests.cpp.i

test/asteroids_tests.s: test/asteroids_tests.cpp.s

.PHONY : test/asteroids_tests.s

# target to generate assembly for a file
test/asteroids_tests.cpp.s:
	$(MAKE) -f CMakeFiles/asteroids_test.dir/build.make CMakeFiles/asteroids_test.dir/test/asteroids_tests.cpp.s
.PHONY : test/asteroids_tests.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... test"
	@echo "... asteroids_test"
	@echo "... asteroids"
	@echo "... src/Asteroids.o"
	@echo "... src/Asteroids.i"
	@echo "... src/Asteroids.s"
	@echo "... src/GameInterface.o"
	@echo "... src/GameInterface.i"
	@echo "... src/GameInterface.s"
	@echo "... src/PlayerSession.o"
	@echo "... src/PlayerSession.i"
	@echo "... src/PlayerSession.s"
	@echo "... src/collision/SATCollisionModel.o"
	@echo "... src/collision/SATCollisionModel.i"
	@echo "... src/collision/SATCollisionModel.s"
	@echo "... src/entities/Bullet.o"
	@echo "... src/entities/Bullet.i"
	@echo "... src/entities/Bullet.s"
	@echo "... src/entities/Ship.o"
	@echo "... src/entities/Ship.i"
	@echo "... src/entities/Ship.s"
	@echo "... src/entities/asteroids/AsteroidBase.o"
	@echo "... src/entities/asteroids/AsteroidBase.i"
	@echo "... src/entities/asteroids/AsteroidBase.s"
	@echo "... src/entities/asteroids/LargeAsteroid.o"
	@echo "... src/entities/asteroids/LargeAsteroid.i"
	@echo "... src/entities/asteroids/LargeAsteroid.s"
	@echo "... src/entities/asteroids/MediumAsteroid.o"
	@echo "... src/entities/asteroids/MediumAsteroid.i"
	@echo "... src/entities/asteroids/MediumAsteroid.s"
	@echo "... src/entities/asteroids/SmallAsteroid.o"
	@echo "... src/entities/asteroids/SmallAsteroid.i"
	@echo "... src/entities/asteroids/SmallAsteroid.s"
	@echo "... src/input/KeyboardController.o"
	@echo "... src/input/KeyboardController.i"
	@echo "... src/input/KeyboardController.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/renderer/Renderer.o"
	@echo "... src/renderer/Renderer.i"
	@echo "... src/renderer/Renderer.s"
	@echo "... src/scenes/GameOverScene.o"
	@echo "... src/scenes/GameOverScene.i"
	@echo "... src/scenes/GameOverScene.s"
	@echo "... src/scenes/GameScene.o"
	@echo "... src/scenes/GameScene.i"
	@echo "... src/scenes/GameScene.s"
	@echo "... src/scenes/HighScoreTableScene.o"
	@echo "... src/scenes/HighScoreTableScene.i"
	@echo "... src/scenes/HighScoreTableScene.s"
	@echo "... src/scenes/MainMenuScene.o"
	@echo "... src/scenes/MainMenuScene.i"
	@echo "... src/scenes/MainMenuScene.s"
	@echo "... src/utility/drawing.o"
	@echo "... src/utility/drawing.i"
	@echo "... src/utility/drawing.s"
	@echo "... src/utility/vector.o"
	@echo "... src/utility/vector.i"
	@echo "... src/utility/vector.s"
	@echo "... src/world/World.o"
	@echo "... src/world/World.i"
	@echo "... src/world/World.s"
	@echo "... test/asteroids_tests.o"
	@echo "... test/asteroids_tests.i"
	@echo "... test/asteroids_tests.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

