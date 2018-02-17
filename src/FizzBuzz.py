#!/usr/bin/env python3.6

import re


class FizzBuzz:

    @staticmethod
    def produce_output(number: int) -> str:

        if re.match('.*3.*', str(number)):
            return 'Lucky'
        elif number % 15 == 0:
            return 'FizzBuzz'
        elif number % 3 == 0:
            return 'Fizz'
        elif number % 5 == 0:
            return 'Buzz'
        else:
            return str(number)

    @staticmethod
    def produce_sequence(infimum, supremum):
        for number in range(infimum, supremum):
            yield FizzBuzz.produce_output(number)

    class Report:

        def __init__(self, producer):

            reportable_buzzwords = ['Buzz', 'Fizz', 'FizzBuzz', 'Lucky', 'Integers']
            self.totals = {buzzword: 0 for buzzword in reportable_buzzwords}

            for output in producer:
                if output in self.totals.keys():
                    self.totals[output] += 1
                elif re.match('^[0-9]*$', output):
                    self.totals['Integers'] += 1
                else:
                    raise Exception('Unexpected output received')

        def total(self):
            return self.totals
