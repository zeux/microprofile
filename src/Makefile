TEST_SRC=$(wildcard test_*.cpp)
TEST_BIN=$(TEST_SRC:%.cpp=%.o)

ifeq ($(shell uname),Darwin)
$(TEST_BIN): LDFLAGS+=-framework OpenGL
else
$(TEST_BIN): LDFLAGS+=-lrt -lGL
endif

all: ../microprofilehtml.h

test: $(TEST_BIN)

$(TEST_BIN): %.o: %.cpp
	$(CXX) $< -std=c++0x -Wall $(LDFLAGS) -I.. -o $@
	./$@

embed.o: embed.c
	$(CC) embed.c -o embed.o

../microprofilehtml.h: embed.o microprofile.html
	./embed.o $@ microprofile.html ____embed____ g_MicroProfileHtml

.INTERMEDIATE: embed.o $(TEST_BIN)
.PHONY: all test