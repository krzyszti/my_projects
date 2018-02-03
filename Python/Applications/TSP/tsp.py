"""
This application will solve TSP problem with simple evolution algorithm.
The result will be shown in pyglet window.
"""
import pyglet
import random
import sys
import math


class Evolution(object):
    def __init__(self):
        self.file_path = 'example.dat'
        self.base = []
        self.iterations = 100
        self.best = []

    def open_file(self):
        cities = []
        with open(self.file_path) as file_handle:
            for line in file_handle:
                city = line.split(' ')
                cities.append([int(city[0]), int(city[1])])
        self.base = cities
        self.best.append(cities)
        self.best.append(self.path(cities))

    def cities_permutations(self):
        cities = []
        cities.extend(self.base)
        random.shuffle(cities)
        return cities

    @staticmethod
    def mutation(lst):
        result = lst
        for element in result:
            (a, b) = (1, 1)
            while a == b:
                (a, b) = (random.randint(0, len(element) - 1), random.randint(0, len(element) - 1))
            (element[a], element[b]) = (element[b], element[a])
        return result

    @staticmethod
    def crossover(lst):
        result = []
        for i in range(0, len(lst) - 1, 2):
            one = lst[i]
            two = lst[i + 1]
            point = random.randint(0, len(one) - 1)
            one[point:], two[point:] = (two[point:], one[point:])
            result.append(one)
            result.append(two)
        return result

    def selection(self, lst):
        result = []
        for i in range(0, len(lst)):
            (a, b) = (random.randint(0, len(lst) - 1), random.randint(0, len(lst) - 1))
            if self.path(lst[a]) > self.path(lst[b]):
                result.append(lst[a])
            else:
                result.append(lst[b])
        result.append(self.best[0])
        return result

    def calculate(self):
        pop = []
        population_limit = random.randint(200, 1000)
        for i in range(0, population_limit):
            pop.append(self.cities_permutations())
        for i in range(0, self.iterations):
            pop = self.mutation(pop)
            pop = self.crossover(pop)
            pop = self.selection(pop)

    def choose_best(self, lst):
        for element in lst:
            if self.best[1] > self.path(element):
                self.best = [element, self.path(element)]

    def path(self, lst):
        result = 0
        i = 0
        while i < len(lst) - 1:
            result += self.line(lst[i], lst[i + 1])
            i += 1
        result += self.line(lst[-1], lst[0])
        return result

    @staticmethod
    def line(xy1, xy2):
        (x1, y1) = xy1
        (x2, y2) = xy2
        if x1 == x2:
            return abs(y1 - y2)
        elif y1 == y2:
            return abs(x1 - x2)
        else:
            return math.sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2))


class Window(pyglet.window.Window):
    def __init__(self):
        super(Window, self).__init__()
        self.tsp = Evolution()
        self.tsp.open_file()

    def on_draw(self):
        self.clear()
        self.print_path()

    def on_key_press(self, symbol, modifiers):
        if symbol == pyglet.window.key.C:
            print("Please wait, calculation in progress")
            self.tsp.calculate()
            print("Calculation is finished")
        if symbol == pyglet.window.key.Q:
            self.close()

    @staticmethod
    def line(xy1, xy2):
        (x1, y1) = xy1
        (x2, y2) = xy2
        pyglet.graphics.draw(2, pyglet.gl.GL_LINES, ('v2i', (x1, y1, x2, y2)), ('c3B', (0, 255, 0, 0, 255, 0)))

    def print_path(self):
        path = self.tsp.best[0]
        for i in range(0, len(path) - 1):
            self.line(path[i], path[i + 1])
        self.line(path[-1], path[0])


def main():
    Window()
    sys.exit(pyglet.app.run())


if __name__ == '__main__':
    main()
