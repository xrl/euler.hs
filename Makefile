.SUFFIXES: .hs .o
SRCS=$(wildcard *.hs)
OBJS=$(patsubst %.hs,%.o,${SRCS})

GHC_FLAGS=-O2

%.o: %.hs
	ghc ${GHC_FLAGS} $<

.PHONY: all
all: ${OBJS}

clean:
	rm -rf *.hi *.o
