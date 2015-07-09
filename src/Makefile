all: ../microprofilehtml.h

TEST_SRC=$(wildcard test_*.cpp)
TEST_BIN=$(TEST_SRC:%.cpp=%.o)

test: $(TEST_BIN)

$(TEST_BIN): %.o: %.cpp
	$(CXX) $< -std=c++0x -Wall -Werror -I.. -o $@
	./$@

embed.o: embed.c
	$(CC) embed.c -o embed.o

../microprofilehtml.h: embed.o microprofile.html
	./embed.o $@ microprofile.html ____embed____ g_MicroProfileHtml

.INTERMEDIATE: embed.o $(TEST_BIN)
.PHONY: all test