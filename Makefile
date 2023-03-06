# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlaiti <marvin@42lausanne.ch>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/20 15:42:14 by jlaiti            #+#    #+#              #
#    Updated: 2022/10/31 10:50:42 by jlaiti           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_printf.c			\
		ft_check_args.c		\
		ft_number.c			\
		ft_putchar.c		\
		ft_unsigned_int.c	\
		ft_char.c			\
		ft_hexa.c			\
		ft_pointer.c		\
		ft_string.c			\

NAME = libftprintf.a

OBJS_SRCS = $(SRCS:.c=.o)

CFLAGS = -Wall -Wextra -Werror

CC = gcc

$(NAME) : $(OBJS_SRCS)
	cd libft/ && make && cp -v libft.a ../$(NAME)
	ar rcs $(NAME) $(OBJS_SRCS) 

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

all : $(NAME)

clean :
	rm -rf $(OBJS_SRCS)
	${MAKE} -C libft clean
fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re 
