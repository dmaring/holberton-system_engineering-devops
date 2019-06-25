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
 * create_zombie - create a new zombie process
 *
 * Return: void
 */
void create_zombie(void)
{
	pid_t childPid;

	switch (childPid = fork())
	{
	case 0:
		printf("Zombie process created, PID: %i\n", getpid());
		_exit(EXIT_SUCCESS);
	default:
		sleep(1);
	}
}

/**
 * main - creates 5 zombie processes
 *
 * Return: void
 */
void main(void)
{
	int i;

	for (i = 0; i < 5; i++)
		create_zombie();

	infinite_while();
}
