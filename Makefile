##
## EPITECH PROJECT, 2024
## MiniLibC
## File description:
## Makefile
##

NAME = libasm.so

CFLAGS 	= -g3

all: $(NAME)

$(NAME):
	nasm -f elf64 strlen.asm
	nasm -f elf64 strchr.asm
	nasm -f elf64 strrchr.asm
	nasm -f elf64 strstr.asm
	nasm -f elf64 strpbrk.asm
	nasm -f elf64 strcmp.asm
	nasm -f elf64 memcpy.asm
	nasm -f elf64 memset.asm
	nasm -f elf64 strcasecmp.asm
	nasm -f elf64 strncmp.asm
	ld -shared strlen.o strchr.o strrchr.o strstr.o strpbrk.o strcmp.o memcpy.o memset.o strcasecmp.o strncmp.o -o $(NAME)
valgrind: $(NAME)
	clear
	valgrind ./$(NAME) | cat -e

style:	fclean
	coding-style . .
	clear
	cat coding-style-reports.log
	rm -f coding-style-reports.log

clean :
	find -name "*~" -delete
	find -name "#**#" -delete
	find -name "*.gcno" -delete
	find -name "*.gcda" -delete
	find -name "vgcore.*" -delete
	find -name "*.o" -delete

fclean : clean
	rm -f $(NAME)

re : fclean $(NAME)
