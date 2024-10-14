CC = gcc
CFLAGS = -g -Wall
LIBS = -lm

# Source files
SRCS1 = buffer_mgr.c storage_mgr.c buffer_mgr_stat.c dberror.c test_assign2_1.c
SRCS2 = buffer_mgr.c storage_mgr.c buffer_mgr_stat.c dberror.c test_assign2_2.c

# Object files
OBJS1 = $(SRCS1:.c=.o)
OBJS2 = $(SRCS2:.c=.o)

# Executables
EXEC1 = test_assign2_1
EXEC2 = test_assign2_2

# Default target
all: $(EXEC1) $(EXEC2)

# Compile targets
$(EXEC1): $(OBJS1)
	$(CC) $(CFLAGS) $(OBJS1) -o $(EXEC1) $(LIBS)

$(EXEC2): $(OBJS2)
	$(CC) $(CFLAGS) $(OBJS2) -o $(EXEC2) $(LIBS)

# Rule to compile .c files to .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target
clean:
	rm -f $(OBJS1) $(OBJS2) $(EXEC1) $(EXEC2)
