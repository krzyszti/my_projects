"""
The third person singular verb form in English is distinguished
by the suffix -s, which is added to the stem of the infinitive
form: run -> runs. A simple set of rules can be given as follows:

   a) If the verb ends in y, remove it and add ies
   b) If the verb ends in o, ch, s, sh, x or z, add es
   c) By default just add s

Your task in this exercise is to define a function make_3sg_form()
which given a verb in infinitive form returns its third person singular form.
Test your function with words like try, brush, run and fix.
Note however that the rules must be regarded as heuristic,
in the sense that you must not expect them to work for all cases.
Tip: Check out the string method endswith().
"""


def make_3sg_form(verb):
    ends_with = verb[-1]
    if ends_with == 'y':
        return '{}ies'.format(verb[:-1])
    elif ends_with in ('o', 's', 'x', 'z') or ends_with == 'h' and verb[-2] in ('s' or 'c'):
        return '{}es'.format(verb)
    else:
        return '{}s'.format(verb)


assert 'tries' == make_3sg_form('try')
assert 'brushes' == make_3sg_form('brush')
assert 'tesths' == make_3sg_form('testh')
assert 'tests' == make_3sg_form('test')
assert 'testshes' == make_3sg_form('testsh')
