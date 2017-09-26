class Queue:
    def __init__(self):
        self.items = []
        self.head = 0

    # Data insert
    def enqueue(self, data):
        self.items.append(data)

    # Data delete
    def dequeue(self):
        self.isEmpty()
        self.items.reverse()
        self.items.pop()
        self.items.reverse()



    #Peek
    def peek(self):
        return self.items[len(self.items)-1]

    #count
    def count(self):
        return len(self.items)

    # isEmpty?
    def isEmpty(self):
        if self.count() == True:
            print("Empty")


    # print
    def display(self):
        print(pyQueue.items)


pyQueue = Queue()
pyQueue.enqueue(3)
pyQueue.enqueue(4)
pyQueue.enqueue(5)
pyQueue.display()

pyQueue.dequeue()
pyQueue.dequeue()
pyQueue.display()

pyQueue.dequeue()



