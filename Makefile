# The compiler.
CC = gfortran

SRC  =  $(shell find src -name *.f90)
OBJ  =  $(SRC:.f90=.o)

OUT = bin
CCFLAGS = 
LDFLAGS =

all: clear dirs build

dirs:
	mkdir $(OUT)

build: $(OBJ)
	$(CC) -o $(OUT)/app $^ $(LDFLAGS)

%.o: %.f90
	$(CC) -o $@ -c $< $(CCFLAGS)

run: all
	$(OUT)/app

clear:
	rm -rf $(OUT)

clean:
	rm -rf $(OUT)
	rm $(OBJ)
