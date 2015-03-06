
BINS=metacomp decomp miniforth

CC = gcc
CFLAGS=-m32 -g

all:	$(BINS)
	./metacomp

miniforth:	kernel.i
	$(CC) $(CFLAGS) miniforth.c -o miniforth -lm
	./miniforth -i kernel  fload extend.mf save-system miniforth.i  ekey bye

metacomp:	metacomp.c
	$(CC) $(CFLAGS) metacomp.c -o metacomp
	./metacomp

decomp:	decomp.c
	$(CC) $(CFLAGS) decomp.c -o decomp

clean:
	rm -f $(BINS) *.i cscope.out *.log
