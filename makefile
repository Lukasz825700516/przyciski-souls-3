LIB_INCLUDE := -I$(HOME)/glm/ -I./src/
LIB_PATH := -L/usr/local/lib
LIB := -lglfw -lGL -lX11 -lXxf86vm -lXrandr -pthread -lXi -ldl -lm

SRC_CPP := $(shell find src/ -name '*.cpp')

all:
	g++ $(SRC_CPP) -o ./bin/release/game $(LIB_INCLUDE) $(LIB_PATH) $(LIB) -lstdc++ -std=c++17

run:
	./bin/release/game

test:
	g++ $(SRC_CPP) -o ./bin/release/game $(LIB_INCLUDE) $(LIB_PATH) $(LIB) -lstdc++ -std=c++17
	./bin/release/game
