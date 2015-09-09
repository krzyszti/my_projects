import sys

class Hello(object):
	def __init__(self):
		self.hello = "Hello World"

	def __str__(self):
		return '{}'.format(self.hello)


def main():
	greeter = Hello()
	print(greeter)
	return 0

if __name__ == '__main__':
	sys.exit(main())
