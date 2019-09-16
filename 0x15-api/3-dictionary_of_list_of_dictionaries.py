#!/usr/bin/python3
"""A python script that returns information about an
employees TODO list progress.
"""
import json
import requests
import sys


def get_todo_info():
    """A function that gets the todo information for all users"""

    # GET all the users
    r = requests.get('https://jsonplaceholder.typicode.com/users')
    users = json.loads(r.text)
    dict_ = {}
    for user in users:
            task_list = []
            dict_[user['id']] = task_list
            # GET tasks for specific user
            r = requests.get(
                'https://jsonplaceholder.typicode.com/todos?userId={}'
                .format(user['id']))
            todos = json.loads(r.text)
            for task in todos:
                task_d = {}
                task_d['username'] = user['username']
                task_d['task'] = task['title']
                task_d['completed'] = task['completed']
                task_list.append(task_d)

    with open("todo_all_employees.json", 'w', encoding='utf-8') as fp:
        json.dump(dict_, fp)


if __name__ == "__main__":
    get_todo_info()
