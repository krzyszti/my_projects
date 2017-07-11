"""
PODANA JEST LISTA ZAWIERAJĄCA ELEMENTY O WARTOŚCIACH 1-n. NAPISZ FUNKCJĘ KTÓRA SPRAWDZI JAKICH ELEMENTÓW BRAKUJE

1-n = [1,2,3,4,5,...,10]
np. n = 10
wejście: [2, 3, 7, 4, 9], 10
wyjście: [1, 5, 6, 8, 10]
"""


def n(lst, maximum):
    result = []
    for i in range(1, maximum + 1):
        if not (i in lst):
            result.append(i)
    return result


print(n([2, 3, 7, 4, 9], 10))
