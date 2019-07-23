#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
int main ()
{
	int sz;
	
	int fd = open("testfile.txt", O_RDONLY|O_CREAT);
	
	if(fd < 0)
	{
		perror("r1");
		exit(1);
	}
	
	sz = write(fd, "Hello  geeks\n", strlen("Hello geeks\n"));
	
	printf("called write(%d, \"Hello geeks\\n\", %ld). It returned %d\n", fd, strlen("Hello geeks\n"), sz);
	
	close(fd);
	
	return 0;
}
