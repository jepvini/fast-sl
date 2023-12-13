#==========================================
#    Makefile: makefile for sl 5.1
#	Copyright 1993, 1998, 2014
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2014/03/31
#==========================================

CC=gcc
CFLAGS=-O -Wall

all: fast-sl

fast-sl: fast-sl.c fast-sl.h
	$(CC) $(CFLAGS) -o fast-sl fast-sl.c -lncurses

clean:
	rm -f sl

distclean: clean
