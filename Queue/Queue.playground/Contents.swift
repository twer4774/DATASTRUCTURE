//: Playground - noun: a place where people can play

import UIKit

/* 기본적인 큐
public struct Queue<T>{
    fileprivate var array = [T]()
    
    public var isEmpty: Bool{
        return array.isEmpty
    }
    public var count: Int{
        return array.count
    }
    public mutating func enQueue(_ element: T){
        array.append(element)
    }
    public mutating func deQueue() -> T?{
        if isEmpty{
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T?{
        return array.first
    }
}

var queue = Queue<String>() //큐 객체 생성
queue.enQueue("Jo")
queue.enQueue("won")
queue.enQueue("ik")
print(queue)
print(queue.array) //배열로 표시
queue.deQueue()
print(queue.array)
*/

/* 메모리의 이동을 통해 메모리 관리를 하는 조금 더 효율적인 큐, deQueue할때의 기능 개선 */
public struct Queue<T> {
    fileprivate var array = [T?]()
    fileprivate var head = 0 //head생성
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enQueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func deQueue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head)/Double(array.count)
/*처음에는 빈 배열의 비율을 전체 배열 크기의 비율로 계산함. 배열의 25%이상이 사용되지 않고,
     요소가 50개가 넘을때 head가 위치한 메모리 공간 제거*/
//        if array.count > 50 && percentage > 0.25 {
        if head > 2 { //헤드가 위치한 메모리 공간을 제거하는 코드
            array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    public var front: T? {
        if isEmpty {
            return nil
        } else {
            return array[head]
        }
    }
}

var queue = Queue<String>() //큐 객체 생성
queue.enQueue("Jo")
queue.enQueue("won")
queue.enQueue("ik")
queue.enQueue("hi")
print(queue)

print(queue.array) //배열로 표시
queue.deQueue()

print(queue.array)
queue.deQueue()
print(queue.array)

queue.deQueue()
print(queue.array) //위에 주석처리된 코드 밑에 if head > 2의 조건 덕분에 원래 deQueue 후에 지정되었던 nil의 메모리 공간이 사라짐

