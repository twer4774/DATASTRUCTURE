class Deque:
    def __init__(self):
        self.array = []

    def isEmpty(self):
        return self.array.count == 0

    def enqueueRight(self, element):
        self.array.append(element)

    def enqueueLeft(self, element):
        self.array.insert(0, element)

    def dequeueLeft(self):
        if self.isEmpty():
            print("Empty")
        else:
            del(self.array[0])

    def dequeueRight(self):
        if self.isEmpty():
            print("Empty")
        else:
            self.array.pop()



deque = Deque()
print(deque.array)
deque.enqueueLeft(1)
deque.enqueueLeft(2)
deque.enqueueLeft(3)
deque.enqueueLeft(4)
print(deque.array)

deque.dequeueLeft()
deque.dequeueRight()
print(deque.array)

deque.enqueueLeft(5)
deque.enqueueRight(6)
print(deque.array)

deque.dequeueLeft()
print(deque.array)