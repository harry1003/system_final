EXE = encode_decode

CC = g++
CPPFLAGS = -Wall -O2 -std=c++11

OBJ_FILES = main.o Huffman.o

$(EXE): $(OBJ_FILES)
	$(CC) $(CPPFLAGS) -o $(EXE) $(OBJ_FILES)
	rm -rf $(OBJ_FILES)

%.o: %.cpp
	${CC} $(CPPFLAGS) -c $<

clean:
	rm -rf $(EXE)