# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afilipe- <afilipe-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 12:53:35 by afilipe-          #+#    #+#              #
#    Updated: 2025/04/03 12:21:08 by afilipe-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afilipe- <afilipe-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 12:53:35 by afilipe-          #+#    #+#              #
#    Updated: 2025/04/03 12:17:59 by afilipe-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT_PATH = ./libft
PRINTF_PATH = ./ft_printf
GNL_PATH = ./get_next_line

# Sources for libft, ft_printf, and get_next_line
SRCS = $(addprefix $(LIBFT_PATH)/, ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
                    ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c \
                    ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
                    ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c \
                    ft_strnstr.c ft_atoi.c ft_substr.c ft_strjoin.c ft_strtrim.c \
                    ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
                    ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strdup.c ft_calloc.c)

PRINTF = $(addprefix $(PRINTF_PATH)/, ft_itoa_printf.c ft_print_auxft.c ft_printc.c ft_printf.c \
                           ft_printhex.c ft_printnbr.c ft_printpoint.c ft_printstr.c ft_printunsig.c \
                           ft_strdup_printf.c ft_strlen_printf.c ft_util.c)

GNL = $(addprefix $(GNL_PATH)/, get_next_line.c get_next_line_utils.c)

# Compiler and flags
CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror -g

# Object files from all the sources
OBJS = ${SRCS:.c=.o} ${PRINTF:.c=.o} ${GNL:.c=.o}

# Library name
NAME = libft.a

# Default target to build the library
all: $(NAME)

# Rule to create libft.a static library
$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

# Clean up object files
clean:
	$(RM) $(OBJS)

# Remove the library
fclean: clean
	$(RM) $(NAME)

# Rebuild everything
re: fclean all

.PHONY: all clean fclean re
