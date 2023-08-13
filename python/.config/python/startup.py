#!/usr/bin/env python3

import atexit
import os
import readline


histfile = os.path.join(os.path.expanduser("~"), ".python_history")

if 'PYTHONHISTFILE' in os.environ:
    histfile = os.path.expanduser(os.environ['PYTHONHISTFILE'])
elif 'XDG_DATA_HOME' in os.environ:
    histfile = os.path.join(os.path.expanduser(os.environ['XDG_DATA_HOME']),
                            'python', 'python_history')
else:
    histfile = os.path.join(os.path.expanduser('~'),
                            '.python_history')

_dir, _ = os.path.split(histfile)
os.makedirs(_dir, exist_ok=True)

try:
    readline.read_history_file(histfile)
    # default history len is -1 (infinite), which may grow unruly
    readline.set_history_length(10_000)
except FileNotFoundError:
    pass

atexit.register(readline.write_history_file, histfile)

del (atexit, os, readline, histfile, _dir)

