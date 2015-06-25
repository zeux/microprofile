TARGET=../microprofilehtml.h

all: $(TARGET)

embed: embed.c
	$(CC) embed.c -o embed

$(TARGET): embed microprofile.html
	./embed $(TARGET) microprofile.html ____embed____ g_MicroProfileHtml

.INTERMEDIATE: embed