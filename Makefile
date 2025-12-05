# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -O2

# Source and output
SRC = cachesim.c
OUT = cachesim

# Default trace + mode (so "make run" works immediately)
TRACE = tracfile.txt
MODE  = 0

# Build the executable
all: $(OUT)

$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC) -lm

# Run with arguments
run: $(OUT)
	./$(OUT) --trace $(TRACE) --mode $(MODE)

# Clean build files
clean:
	rm -f $(OUT)
