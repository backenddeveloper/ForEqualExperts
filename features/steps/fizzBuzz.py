from behave import given, then, when
from src.FizzBuzz import FizzBuzz


@given(u'a {number:d} that divides by {divisor:d}')
def step_impl(context, number, divisor):
    context.number = number


@given(u'a {number:d} that doesn\'t divide by 2, 5 or 15')
def step_impl(context, number):
    context.number = number


@given(u'a {number:d} that contains a 3')
def step_impl(context, number):
    context.number = number


@given(u'an {infimum:d} and {supremum:d} range')
def step_impl(context, infimum, supremum):
    context.infimum = infimum
    context.supremum = supremum


@when(u'we produce a sequence')
def step_impl(context):
    context.seq = FizzBuzz.produce_sequence(context.infimum, context.supremum)


@then(u'the output {output} is displayed')
def step_impl(context, output):
    assert FizzBuzz.produce_output(context.number) == output


@then(u'an output is produced for each number in that sequence')
def step_impl(context):
    assert len([x for x in context.seq]) == (context.supremum - context.infimum)
