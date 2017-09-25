class Stack:
    def __init__(self):
        self.items = []
    def push(self, item):
        self.items.append(item)
    def pop(self):
        return self.items.pop()
    def isEmpty(self):
        return not self.items



pyStack = Stack()
print(pyStack)
print(pyStack.isEmpty())

pyStack.push(1)


