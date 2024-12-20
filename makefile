all: main

main: main.o
	gcc -g main main.o -Isrc/include -Lsrc/lib -lmingw32 -lSDL2main -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lSDL2

main.o: main.c
	gcc -g -c main.c -Isrc/include -Lsrc/lib -lmingw32 -lSDL2main -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lSDL2

clear:
	rm -f *.o main