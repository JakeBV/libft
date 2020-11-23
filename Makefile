NAME		= libft.a

CC			= gcc

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

SRCS		= ft_atoi.c ft_memccpy.c ft_putstr_fd.c ft_strncmp.c ft_bzero.c \
			  ft_memchr.c ft_split.c ft_strnstr.c ft_calloc.c ft_memcmp.c \
			  ft_strchr.c ft_strrchr.c ft_isalnum.c ft_memcpy.c ft_strdup.c \
			  ft_strtrim.c ft_isalpha.c ft_memmove.c ft_strjoin.c ft_substr.c \
			  ft_isascii.c ft_memset.c ft_strlcat.c ft_tolower.c ft_isdigit.c \
			  ft_putchar_fd.c ft_strlcpy.c ft_toupper.c ft_isprint.c \
			  ft_putendl_fd.c ft_strlen.c ft_itoa.c ft_putnbr_fd.c \
			  ft_strmapi.c

SRCS_BONUS	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			  ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			  ft_lstmap.c ft_isspace_bonus.c ft_putinvis_bonus.c \
			  ft_putnbr_bonus.c ft_putstr_bonus.c

OBJS		= ${SRCS:.c=.o}

OBJS_BONUS	= ${SRCS_BONUS:.c=.o}

.c.o:
	${CC} ${CFLAGS} -I. -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}

clean: 
	${RM} ${OBJS} ${OBJS_BONUS}

fclean: clean
	${RM} ${NAME}

re: fclean all

all: ${NAME}

bonus:	${OBJS} ${OBJS_BONUS}
	ar rc ${NAME} ${OBJS} ${OBJS_BONUS}
	ranlib ${NAME}

.PHONY: all clean fclean re
