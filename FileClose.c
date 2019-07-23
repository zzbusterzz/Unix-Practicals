#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#include<unistd.h>

int main()
{
	int fd1 = open("testfile.txt", O_RDONLY|O_CREAT);

	if(fd1 < 0)
	{
		perror("c1");
		exit(1);
	}

	printf("Opened the fd = %d\n", fd1);

	if(close(fd1) < 0)
	{
		perror("c1");
		exit(1);
	}
	printf("Closed the fd. \n");

	return 0;
}
