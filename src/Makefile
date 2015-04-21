
CC=clang
CPP=clang++
LD=clang++
TARGET=../microprofilehtml.h

all: $(TARGET)

embed: embed.c
	clang -g embed.c -o embed

$(TARGET): embed microprofile.html
	./embed $(TARGET) microprofile.html ____embed____ g_MicroProfileHtml


