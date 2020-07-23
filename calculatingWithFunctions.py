# Calculating with Functions

def one(operator=[]):
    if (operator is None):
        return 1
    else:
        return input()

def plus(number):
    return number()

def greet():
    return "hello"

print(one(greet()))