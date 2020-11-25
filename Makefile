# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kabourad <kabourad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/24 04:34:06 by kabourad          #+#    #+#              #
#    Updated: 2019/10/28 20:32:56 by kabourad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libft.a
SRCS =	ft_isalnum.c \
		ft_atoi.c \
		ft_isalpha.c \
		ft_calloc.c \
		ft_isascii.c \
		ft_bzero.c \
		ft_isdigit.c \
		ft_itoa.c \
		ft_memccpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_strjoin.c \
		ft_strncmp.c \
		ft_strlcat.c \
		ft_strlen.c \
		ft_substr.c \
		ft_strlcpy.c \
		ft_strmapi.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_isprint.c \
		ft_strtrim.c \

OBJ =	$(SRCS:.c=.o)

BONUS_SRCS =	ft_lstadd_front_bonus.c \
				ft_lstnew_bonus.c \
				ft_lstsize_bonus.c \
				ft_lstadd_back_bonus.c \
				ft_lstdelone_bonus.c \
				ft_lstclear_bonus.c \
				ft_lstiter_bonus.c \
				ft_lstlast_bonus.c \
				ft_lstmap_bonus.c

BONUS_OBJ = $(BONUS_SRCS:.c=.o)

FLAGS = -Wall -Werror -Wextra
CC = gcc
INCLUDES = ./

.PHONY: clean fclean all re

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

bonus: all $(BONUS_OBJ)
	ar rc $(NAME) $(BONUS_OBJ)
	@ranlib $(NAME)

%.o : %.c
	$(CC) $(FLAGS) -I/$(INCLUDES) -c $< -o $@

clean:
	rm -f *.o
fclean: clean
	rm -f $(NAME)
re: fclean all
