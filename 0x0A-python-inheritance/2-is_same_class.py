#!/usr/bin/python3
"""Contains a function that checks if instances are same class"""


def is_same_class(obj, a_class):
    """returns True if the obj is exactly an instance of a_class
        otherwise False.
        Args:
            obj: object/instance
            a_class: class
    """
    return type(obj) is a_class
