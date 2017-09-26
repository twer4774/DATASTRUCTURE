class Circle_Queue:

    def __init__(self):
        self.items = [0]*5
        self.rear = 0
        self.front = 0

    # Data insert
    def enqueue(self, data):
        if self.isFull():
            print("IS FULL")
        else:
            self.rear = ((self.rear+1) % self.count())
            self.items[self.rear] = data

    # Data delete
    def dequeue(self):
        if self.isEmpty():
            print("IS EMPTY")
        else:
            self.front = (self.front+1) % self.count()

    # count
    def count(self):
        return len(self.items)

    # isEmpty?
    def isEmpty(self):
        return self.rear == self.front

    # isFull?
    def isFull(self):
       return ((self.rear+1) % self.count()) == (self.front % self.count())

    # print
    def display(self):
        print(pyQueue.items)


pyQueue = Circle_Queue()
pyQueue.dequeue()
pyQueue.enqueue(1)
pyQueue.enqueue(2)
pyQueue.enqueue(3)
pyQueue.enqueue(4)

pyQueue.display()
pyQueue.dequeue()

pyQueue.enqueue(5)

pyQueue.dequeue()
pyQueue.dequeue()

pyQueue.display()

pyQueue.enqueue(6)
pyQueue.enqueue(7)
pyQueue.enqueue(8)
pyQueue.display()

pyQueue.dequeue()
pyQueue.dequeue()
pyQueue.dequeue()
pyQueue.dequeue()
pyQueue.dequeue()

