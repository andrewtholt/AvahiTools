
CFLAGS=-g

BINS=register-client 

LIBS=-lsqlite3 -lavahi-client -lavahi-common

all:	$(BINS)

register-client:    register-client.c
	gcc $(CLAGS) register-client.c -o $@ -lavahi-client -lavahi-common

install:
	strip register-client
	cp ./register-client /usr/local/bin

clean:	all
	rm -f *.o $(BINS)
