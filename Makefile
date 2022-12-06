all:
	flex -o output.c count.l
	gcc -std=c99 -Wall -Wextra -pedantic output.c
	./a.out

clean:
	rm -f output.c a.out
