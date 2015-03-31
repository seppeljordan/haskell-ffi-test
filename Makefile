hello: hello.o Fibs.o
	ghc hello.o Fibs.o -no-hs-main -o hello

hello.o: hello.c Fibs_stub.h
	ghc -c hello.c

Fibs.o Fibs_stub.h: Fibs.hs
	ghc Fibs.hs

clean:
	rm -f *.o *.h *.hi hello

.PHONY: clean
