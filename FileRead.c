#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#include<unistd.h>

int main()
{
	int fd,sz;
	char *c = (char *) calloc(100, sizeof(char));
	
	fd = open("testfile.txt", O_RDONLY|O_CREAT);
	
	if(fd < 0) 
	{
		perror("r1");
		exit(1);
	}
	
	sz = read(fd, c, 10);
	
	printf("called red(%d, c, 10). returned that %d bytes werer read.\n",fd, sz);
	c[sz] = '\0';
	printf("Those bytes are as follows : %s\n",c);
	
	return 0;
}
