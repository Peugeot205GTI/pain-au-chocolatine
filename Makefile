#
## EPITECH PROJECT, 2025
## Makefile
## File description:
## Don't forget to write a description ^^
#

SOURCES = main.c sixseven.c
OBJS    = $(SOURCES:.c=.o)
NAME    = test
TEST_SOURCES = tests/main-test.c sixseven.c
TEST_NAME = unit_tests

CC      = epiclang
LDFLAGS =
CFLAGS  = -g3
TEST_LDFLAGS = $(LDFLAGS) -lcriterion


all: $(NAME)
	@echo -en "\e[1;5;32mDone compiling "
	@echo -n $(NAME)
	@echo -e "!\e[0m"

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

tests_run: $(TEST_NAME)

$(TEST_NAME): $(TEST_SOURCES)
	$(CC) $(TEST_SOURCES) -o $(TEST_NAME) $(TEST_LDFLAGS)
	./unit_tests

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f $(TEST_NAME)



re: fclean all
