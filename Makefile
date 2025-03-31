# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afilipe- <afilipe-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 12:53:35 by afilipe-          #+#    #+#              #
#    Updated: 2025/03/31 11:41:24 by afilipe-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


LIBFT_PATH = ./libft/libft
SRCS	= $(addprefix $(LIBFT_PATH)/, ft_isalpha.c \
		ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_strlen.c ft_memset.c \
		ft_bzero.c ft_memcpy.c ft_memmove.c \
		ft_strlcpy.c ft_strlcat.c ft_toupper.c \
		ft_tolower.c ft_strchr.c ft_strrchr.c \
		ft_strncmp.c ft_memchr.c ft_memcmp.c \
		ft_strnstr.c ft_atoi.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c \
		ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
		ft_putnbr_fd.c ft_strdup.c ft_calloc.c)

PRINTF_PATH = ./ft_printf
PRINTF_SOURCES = $(addprefix $(PRINTF_PATH)/, *.c)

GNL_PATH = ./get_next_line
GNL_SOURCES = $(addprefix $(GNL_PATH)/, *.c)

OBJS	= ${SRCS:.c=.o}
OBJS_PRINTF	= ${PRINTF_SOURCES:.c=.o}
OBJS_GNL	= ${GNL_SOURCES:.c=.o}
CC		= cc
RM		= rm -f
CFLAGS		= -Wall -Wextra -Werror


NAME		= libft.a

all:		$(NAME)

$(NAME):	$(OBJS) $(OBJS_GNL) $(OBJS_PRINTF)
			ar rcs $(NAME) $(OBJS) $(OBJS_GNL) $(OBJS_PRINTF)

clean:			
		$(RM) $(OBJS)

fclean:	clean
		$(RM) $(NAME)
		
re:		fclean $(NAME)

.PHONY:		all clean fclean re
