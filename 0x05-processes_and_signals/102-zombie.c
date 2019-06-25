#include <stdio.h>
#include <stdlib.h>

/**
 * infinite_while - keep zombie PIDs alive
 *
 * Return: 0 on success
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - creates 5 zombie processes
 *
 * Return: void
 */
int main(void)
{
	pid_t childPid;
	int i;

	for (i = 0; i < 5; i++)
	{
		childPid = fork();
		if (childPid == 0)
		{
			printf("Zombie process created, PID: %i\n", getpid());
			exit(0);
		}
	}
	infinite_while();
}
