/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: afilipe- <afilipe-@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/19 11:11:57 by afilipe-          #+#    #+#             */
/*   Updated: 2025/04/03 10:38:32 by afilipe-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 13
# endif

# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>
# include <stdarg.h>
# include <fcntl.h>


char	*get_next_line(int fd);

// Util function
int		ft_strlen_gnl(char *str);
char	*ft_bufferjoin(char *str1, char *str2);
char	*ft_strchr_cust(const char *str, int c);
char	*ft_strndup(char *str, int len);
static char	*ft_to_arch(int fd, char *archive);
static char	*ft_from_arc(char *archive);
static char	*ft_housekeeping(char *archive);

#endif
