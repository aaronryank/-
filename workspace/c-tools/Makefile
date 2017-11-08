OBJ := src/tools/line2multi.o src/main.o
CC := gcc
CFLAGS := -g -Wall

OUT := c-tools

all: $(OUT)

$(OUT): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(OUT)

clean:
	rm -f $(OBJ)