OBJ = rts_on.o

TARGET = rts_on

$(TARGET): $(OBJ)
	gcc -o $(TARGET) $(OBJ)
%.o: %.c
	gcc -Wall -c $^ -o $@
.PHONY: clean
clean:
	rm -f $(OBJDIR)/$(TARGET) $(OBJ)
