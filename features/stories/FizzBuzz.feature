Feature: The FizzBuzz program
    To demonstrate development lifecycle
    To Equal Experts
    In preperation for technical interview

Scenario Outline: It prints Fizz
    Given a <number> that divides by 3
    Then the output Fizz is displayed

    Examples: numbers that divide by 3
    | number |
    | 3      |
    | 6      |
    | 9      |
    | 12     |
    | 18     |
    | 254229 |

Scenario Outline: It prints Buzz
    Given a <number> that divides by 5
    Then the output Buzz is displayed

    Examples: numbers that divide by 5
    | number |
    | 5      |
    | 10     |
    | 20     |
    | 25     |
    | 254240 |

Scenario Outline: It prints FizzBuzz
    Given a <number> that divides by 15
    Then the output FizzBuzz is displayed

    Examples: numbers that divide by 15
    | number |
    | 15     |
    | 30     |
    | 45     |
    | 254220 |

Scenario Outline: It prints the integer
    Given a <number> that doesn't divide by 2, 5 or 15
    Then the output <number> is displayed

    Examples: numbers that  don't divide by 3, 5 or 15
    | number |
    | 2      |
    | 4      |
    | 7      |
    | 8      |
    | 11     |
    | 13     |
    | 14     |
    | 254221 |

Scenario Outline: It prints a range of numbers
    Given an <infimum> and <supremum> range
    When we produce a sequence
    Then an output is produced for each number in that sequence

    Examples: Ranges
    | infimum | supremum |
    | 0       | 10       |
    | 10      | 100      |
    | 100     | 10000    |
















