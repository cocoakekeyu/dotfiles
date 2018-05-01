#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os

def main():
    for path, dirnames, filenames in os.walk('.'):
        for dname in dirnames:
            try:
                os.chmod(os.path.join(path, dname), 0775)
            except OSError as e:
                print('set {} error: {}'.format(dname, e))
        for fname in filenames:
            if path == '.' and fname.startswith('.'):
                continue
            try:
                os.chmod(os.path.join(path, fname), 0664)
            except OSError as e:
                print('set {} error: {}'.format(fname, e))


if __name__ == '__main__':
    main()

