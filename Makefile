CC=gcc

libbsdmalloc.so: CFLAGS+=-fPIC -shared -Wall -Werror -pedantic -ansi -O3
libbsdmalloc.so: bsdmalloc.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f libbsdmalloc.so bsdmalloc.o
