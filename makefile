.phony: clean test

TEST = 

SRC = 

all: directories ut_main

ut_main: test/ut_main.cpp $(TEST) $(SRC)
	g++ -std=c++17 -Wfatal-errors test/ut_main.cpp -o bin/ut_all -lgtest -lpthread

directories:
	mkdir -p bin

clean:
	rm -rf bin
	
test: all
	bin/ut_all