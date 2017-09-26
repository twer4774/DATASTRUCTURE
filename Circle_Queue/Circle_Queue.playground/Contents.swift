//: Playground - noun: a place where people can play

/* 주석문으로 실행하면 앞에서부터 요소를 채우는 기능이됨*/
import UIKit

public struct CircleQueue<T>{
    fileprivate var array: [T?]
    fileprivate var rear: Int = 0 //맨 끝 자료를 가리키는 포인터(삽입시 이용)
    fileprivate var front: Int = 0 //제일 처음 자료보다 1작은 위치를 가리키는 포인터
    
    public init(count: Int){
        array = [T?](repeating: nil, count: count)
    }
    
//    public mutating func insert(_ element: T) -> Bool{
//        if !isFull{
//            array[rear % array.count] = element
//            rear += 1
//            return true
//        }else{
//            return false
//        }
//    }
    
    public mutating func insert(_ element: T){
        
        if(isFull){
            print("원형큐가 꽉참")
            
        } else {
            rear = (rear+1) % array.count
            array[rear] = element
        }
    }
    
//    public mutating func read() -> T?{
//        if !isEmpty{
//            let element = array[front % array.count]
//            front += 1
//            return element
//        } else {
//            return nil
//        }
//    }

    public mutating func read(){
    
        if(isEmpty){
            print("원형큐가 비었음")
        } else {
            front = (front+1) % array.count
//            print(array[front])
        }
    }
    
   
    
    public var isEmpty: Bool{
        return rear == front
    }
    
    
    public var isFull: Bool{
        return ((rear+1) % array.count) == (front % array.count)
    }
    
}

var q = CircleQueue<Int>(count: 5)

q.read() //처음 시작은 비어있음
q.insert(1)
q.insert(2)
q.insert(3)
q.insert(4)
//처음 빈공간을 제외하고 4요소가 채워짐
print(q.array)
q.read()

//5번째 요소 넣어보기 - 큐가 가득참
q.insert(5)

q.read()
q.read()

//가득찬 상태에서 다음 요소를 넣음
q.insert(6)
q.insert(7)
q.insert(8)
print(q.array)

//저장을 안하고 계속해서 불러오면 rear과 front가 만나 비어있는 상태로 변함
q.read()
q.read()
q.read()
q.read()
q.read()

//print(q.array)



