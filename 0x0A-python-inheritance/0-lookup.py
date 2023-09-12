#!/usr/bin/python3
"""contains a function that returns the list of available attributes
    and methods of an object
"""


def lookup(obj):
    """returns the list of available attributes and methods of an object
        Args:
            obj: object whose attributes and methods are to be printed
    """
    return dir(obj)
