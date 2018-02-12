#!/usr/bin/env python3.6


class FizzBuzz:

    @staticmethod
    def produce_output(number: int) -> str:
        
        if number % 15 == 0:
            return 'FizzBuzz'
        elif number % 3 ==0:
            return 'Fizz'
        elif number % 5 == 0:
            return 'Buzz'
        else:
            return str(number)


    @staticmethod
    def produce_sequence(infimum, supremum, produce_output=produce_output, range=range):
        for number in range(infimum, supremum):
            yield produce_output(number)
