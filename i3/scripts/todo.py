#! /usr/bin/python3
from taskw import TaskWarrior
import os
import subprocess


__author__ = "Sreejith Sreekumar"
__email__ = "sreekumar.s@husky.neu.edu"
__version__ = "0.0.1"

def sendmessage(message):
    subprocess.Popen('notify-send "' +  message + '" -i /home/sree/.i3/scripts/todo.png',shell=True)    
    return

try:

    w = TaskWarrior()
    tasks = w.load_tasks()
    tasks.keys()
    print("Tasks:" + str(len(tasks['pending'])))

    if os.environ.get('BLOCK_BUTTON'):
        pending = tasks['pending']
        text = ""
        for task in pending:
            print(task)
            text += str(task["id"]) + ". " + task["description"] + "\n"

        sendmessage(text)
        
except:
    pass
        
            
