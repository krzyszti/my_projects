"""
przyjmuje 2 stringi: "79-900" i "80-155" i zwraca listę kodów pomiędzy nimi
"""


def de_code(s):
    return int(''.join(s.split('-')))


def code(i):
    l = str(i)
    return "{}-{}".format(l[:2], l[2:])


def code_list(c_1, c_2):
    code_1 = de_code(c_1)
    code_2 = de_code(c_2)
    result = []
    for i in range(code_1 + 1, code_2):
        result.append(code(i))
    return result


print(code_list("79-900", "80-155"))
