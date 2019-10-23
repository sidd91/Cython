CC = gcc

CFLAGS = -fPIC -Wall -std=c99

CODE_DIR = .

LIB_DIR = ./library

INCLUDES = -I.

LIB = libAppClient

SRCS = ./application_C.c ./transport_C.c

linux:
		$(RM) *.o *~
		$(CC) $(CFLAGS) $(INCLUDES) -c $(SRCS)
		$(CC) -shared -o $(LIB).so *.o
		# -mv $(LIB).so *.o ./library