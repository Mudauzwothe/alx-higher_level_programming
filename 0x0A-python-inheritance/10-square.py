#!/usr/bin/python3
"""Square Class, inherits from Rectangle"""
Rectangle = __import__('9-rectangle').Rectangle


class Square(Rectangle):
    """class representation for Square"""
    def __init__(self, size):
        """initializes parent class constructor and internal attributes"""
        super().__init__(size, size)
        self.integer_validator("size", size)
        self.__size = size
