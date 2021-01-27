NAME=libasm.a
all: $(NAME)
$(NAME):
	@nasm -fmacho64 ft_read.s
	@nasm -fmacho64 ft_write.s
	@nasm -fmacho64 ft_strdup.s
	@nasm -fmacho64 ft_strcpy.s
	@nasm -fmacho64 ft_strcmp.s
	@nasm -fmacho64 ft_strlen.s
	@nasm -fmacho64 ft_list_size.s
	@ar -rc $(NAME) ft_read.o ft_strcmp.o ft_write.o ft_strdup.o ft_strlen.o ft_strcpy.o ft_list_size.o
	@ranlib $(NAME)
clean:
	rm  -f *.o
fclean: clean
	rm -f $(NAME)
re: fclean clean all
