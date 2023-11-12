
CC = gcc
CCFLAGS = -Wall -g -m32

SCRd = /classes/cs3501/cs3501_lee/bin/

OBJ = main.o prog2.o

xtest : $(OBJ)
	$(CC) $(CCFLAGS) -o xtest $(OBJ)

clean :
	- rm -f $(OBJ)
kill :
	- rm -f $(OBJ) xtest

main.o : main.c
	$(CC) $(CCFLAGS) -c main.c

prog2.o : prog2.s
	$(CC) $(CCFLAGS) -c prog2.s 

.c.o:
	$(CC) $(CCFLAGS) -c $<

submit:
	make kill
	$(SCRd)/p_copy -o 2
