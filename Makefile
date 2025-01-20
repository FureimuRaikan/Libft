# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yguinio <yguinio@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/12 11:29:57 by yguinio           #+#    #+#              #
#    Updated: 2024/11/18 11:33:48 by yguinio          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
PROG = program

FILES = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
		ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
		ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS_FILES = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
			  ft_lstclear.c ft_lstiter.c ft_lstmap.c
			  
OBJ = $(FILES:.c=.o)
BONUS_OBJ = $(BONUS_FILES:.c=.o)

CC = cc
CFLAGS = -Werror -Wextra -Wall
AR = ar rcs

all : $(NAME)

$(NAME) : $(OBJ)
	$(AR) $(NAME) $(OBJ)

$(OBJ) : $(FILES)
	$(CC) $(CFLAGS) -c $< $^

$(BONUS_OBJ) : $(BONUS_FILES)
	$(CC) $(CFLAGS) -c $< $^
	
clean :
	rm -f $(OBJ) $(BONUS_OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all

bonus : all $(BONUS_OBJ)
	$(AR) $(NAME) $(OBJ) $(BONUS_OBJ)

.PHONY : all clean fclean re bonus