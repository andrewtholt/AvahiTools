
CFLAGS=-g

BINS=register-client browse

LIBS= -lavahi-client -lavahi-common # -lsqlite3 

all:	$(BINS)

register-client:    register-client.c
	gcc $(CFLAGS) register-client.c -o $@ -lavahi-client -lavahi-common

browse:    browse.c
	gcc $(CFLAGS) browse.c -o $@ -lavahi-client -lavahi-common

install:
	strip register-client
	cp ./register-client /usr/local/bin

clean:	all
	rm -f *.o $(BINS)
