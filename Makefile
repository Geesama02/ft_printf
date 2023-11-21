CFLAGS = -Wall -Wextra -Werror
CC = cc
NAME = libftprintf.a
SRC = ft_printf_mem.c ft_lower_hex.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_upper_hex.c u_printf.c ft_printf.c
OBJS = ${SRC:.c=.o}

all : ${NAME}

${NAME} : ${OBJS}
	ar rc $@ $^

%.o: %.c ft_printf.h
	${CC} ${CFLAGS} -c -o $@ $<

clean : 
	rm -rf ${OBJS} 

fclean : clean
	rm -rf ${NAME}

re : fclean all

.PHONY : all clean fclean re