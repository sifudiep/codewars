# Largest pair sum in array
import sys


def largest_pair_sum(numbers):
    # your code here
    largestNumber = numbers[0]
    secondLargestNumber = numbers[0]
    for x in numbers:
        if (x > largestNumber):
            largestNumber = x

    for x in numbers:
        if (x > secondLargestNumber and x != largestNumber):
            secondLargestNumber = x 

    return largestNumber + secondLargestNumber


largest_pair_sum([-10, -8, -16, -18, -19])
