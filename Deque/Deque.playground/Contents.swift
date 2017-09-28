//: Playground - noun: a place where people can play

import UIKit

/* Simple Dequeue */
public struct Deque<T> {
    private var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueueRight(_ element: T) {
        array.append(element)
    }
    
    public mutating func enqueueLeft(_ element: T) {
        array.insert(element, at: 0)
        //array.insert(element, atIndex: 0)
    }
    
    public mutating func dequeueLeft() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public mutating func dequeueRight() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeLast()
        }
    }
    
    public func peekLeft() -> T? {
        return array.first
    }
    
    public func peekRight() -> T? {
        return array.last
    }
}

var deque = Deque<Int>()
deque.enqueueLeft(1)
deque.enqueueLeft(2)
deque.enqueueLeft(3)
deque.enqueueLeft(4)
print(deque)

deque.dequeueLeft()
deque.dequeueRight()
print(deque)

deque.enqueueLeft(5)
deque.dequeueLeft()

print(deque)
deque.dequeueLeft()

