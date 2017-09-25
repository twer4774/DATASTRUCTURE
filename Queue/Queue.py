class Queue:
    # Data insert
    def enqueue(self, data):
        raise NotImplemented

    # Data delet
    def dequeue(self):
        raise NotImplemented

    # Data peek
    def peek(self):
        raise NotImplemented

    # isEmpty?
    def isEmpty(self):
        raise NotImplemented

    # isFull?
    def isFull(self):
        raise NotImplemented

    # print list
    def display(self):
        raise NotImplemented

pyQueue = Queue()
pyQueue.enqueue(3)
pyQueue.enqueue(5)

