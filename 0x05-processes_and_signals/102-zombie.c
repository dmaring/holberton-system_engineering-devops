#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

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
void main(void)
{
	pid_t childPid;
	int i;

	childPid = fork();
	if (childPid == 0)
	{
		printf("Zombie process created, PID: %i\n", getpid());
		_exit(EXIT_SUCCESS);
	}

	childPid = fork();
	if (childPid == 0)
	{
		printf("Zombie process created, PID: %i\n", getpid());
		_exit(EXIT_SUCCESS);
	}

	childPid = fork();
	if (childPid == 0)
	{
		printf("Zombie process created, PID: %i\n", getpid());
		_exit(EXIT_SUCCESS);
	}

	childPid = fork();
	if (childPid == 0)
	{
		printf("Zombie process created, PID: %i\n", getpid());
		_exit(EXIT_SUCCESS);
	}

	childPid = fork();
	if (childPid == 0)
	{
		printf("Zombie process created, PID: %i\n", getpid());
		_exit(EXIT_SUCCESS);
	}
	infinite_while();
}
