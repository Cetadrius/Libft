# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afilipe- <afilipe-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 12:53:35 by afilipe-          #+#    #+#              #
#    Updated: 2025/04/03 12:06:42 by afilipe-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


LIBFT_PATH = ./libft
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
PRINTF = $(addprefix $(PRINTF_PATH)/, ft_itoa_printf.c \
		ft_print_auxft.c ft_printc.c ft_printf.c \
		ft_printhex.c ft_printnbr.c ft_printpoint.c \
		ft_printstr.c ft_printunsig.c ft_strdup_printf.c \
		ft_strlen_printf.c ft_util.c)

GNL_PATH = ./get_next_line
GNL		 = get_next_line/get_next_line.c \
			get_next_line/get_next_line_utils.c

CC		= cc
RM		= rm -f
CFLAGS		= -Wall -Wextra -Werror

OBJS = ${SRCS:.c=.o} ${PRINTF:.c=.o} ${GNL:.c=.o}
NAME		= libft.a

all:		$(NAME)


$(NAME):	$(OBJS) 
			ar rcs $(NAME) $(OBJS) 

clean:			
		$(RM) $(OBJS) 

fclean:	clean
				$(RM) $(NAME)
		
re:		fclean all

.PHONY:		all clean fclean re
