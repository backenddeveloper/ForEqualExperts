from behave import given, then, when

from src.FizzBuzz import FizzBuzz

@given(u'a {number:d} that divides by {divisor:d}')
def step_impl(context, number, divisor):
    context.number = number

@given(u'a {number:d} that doesn\'t divide by 2, 5 or 15')
def step_impl(context, number):
    context.number = number

@then(u'the output {output} is displayed')
def step_impl(context, output):
    assert FizzBuzz.produce_output(context.number) == output
