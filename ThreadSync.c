#include<stdio.h>
#include<pthread.h>
#include<string.h>
#include<stdlib.h>
#include<unistd.h>

pthread_t tid[2];
pthread_mutex_t lock;//Add a mutex to resolve the synchronisation problem

int counter;

void* trythis(void* arg)
{
	pthread_mutex_lock(&lock);//Begin the lock

	unsigned long i = 0;
	counter++;
	
	printf("\n Job %d has started\n", counter);
	
	for(i = 0; i < (0XFFFFFFFF); i++);

	printf("\n Job %d has finished\n", counter);
	
	pthread_mutex_unlock(&lock);//Remove the lock
		
	return NULL;
}

int main(void)
{
	int i = 0;
	int error;
	
	if(pthread_mutex_init(&lock, NULL) != 0)//Initialise mutex
	{
		printf("\n mutex init has failed\n");
		return 1;
	}	
	
	while(i < 2)
	{
		error = pthread_create(&(tid[i]), NULL, &trythis, NULL);
		
		if(error != 0)
			printf("\nThread cannot be created : [%s]", strerror(error));
		
		i++;
	}
	
	pthread_join(tid[0], NULL);
	pthread_join(tid[1], NULL);
	pthread_mutex_destroy(&lock);//Destory mutex
	
	return 0;
}
