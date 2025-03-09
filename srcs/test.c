#include <stdio.h>
#include <stdlib.h>

int	main(void)
{
	char	*str;

	str = malloc(42);
	str[0] = 'a';
	str[42 - 1] = '\0';
	printf("str = %s", str);
	printf("test.");
}
