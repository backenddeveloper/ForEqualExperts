Feature: The reporting feature
    To report on the output of the primary class
    For Equal Experts
    In preperation for technical interview

Scenario Outline: It totals up the outputs
    Given an <infimum> and <supremum> range
    When we produce a sequence
    And  an output report is run on the sequence
    Then the number of Fizz produced is <fizz>
    And  the number of Buzz produced is <buzz>
    And  the number of FizzBuzz produced is <fizzbuzz>
    And  the number of Lucky produced is <lucky>
    And  the number of Integers produced is <integers>

    Examples: Known good reporting outputs
    | infimum | supremum | fizz | buzz | fizzbuzz | lucky | integers |
    | 0       | 20       | 4    | 2    | 2        | 2     | 10       |
    | 20      | 40       | 3    | 2    | 0        | 11    | 4        |
    | 40      | 100      | 14   | 8    | 4        | 6     | 28       |
