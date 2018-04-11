# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cfrouin <cfrouin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/03 14:41:23 by cfrouin           #+#    #+#              #
#    Updated: 2016/11/28 13:41:46 by cfrouin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC			=		srcs/main.c \
					srcs/tet_list.c \
					srcs/file.c \
					srcs/check_tetriminos.c \
					srcs/resolve.c \
					srcs/resolve_map.c \
					srcs/ft_puttab.c

NAME		=		fillit

OBJ			=		$(SRC:.c=.o)

CFLAGS		=		-Wextra -Wall -Iincludes

all:				$(NAME)

$(NAME):			$(OBJ)
					gcc -Llibs -lft -o $(NAME) $(OBJ)

clean:
					rm -f $(OBJ)

nclean:				all clean

fclean:				clean
					rm -f $(NAME)

re:					fclean all

.PHONY:				all clean fclean re
