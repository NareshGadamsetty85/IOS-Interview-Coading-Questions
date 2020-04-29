import UIKit

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
// QUEUES
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

// Queues use FIFO ordering,meaning the first element that was enqueued will be the first to get dequed.Queues are handy when you need to maintainn the order of your elements to process later.

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

// Common operations on Queues

// This protocol describes the common operations for a queue.

// Enqueue : Insert an element at the back of the queue.Returns true if operation was successful

// Dequeue : Remove the element at the front of the queue and return in.

// isEmpty : Check if the queue is empty.

// peek : Return the element at the front of the queue without removing it.

// Imp Note : Queue only cares about removal from the front and insertion at the back. You don't really need to know what the contents are in between. If you did, you would probably just use an array.

public protocol QueuesProtocol
{
    
    associatedtype T
    
   mutating func enQueue(item : T) -> Bool
   mutating func deQueue() -> Bool
  
    // This is optional now
    func isQueueEmpty() -> Bool
    func peekItem()
    func optionalMethod()
    
    // optionalMethod using @objc
    //@objc optional func optionalMethod()
}

// you cannot create optinal methods in swift protocol but by using this approach you can create optinals otherwise be using  @objc optional func optionalMethod()

extension QueuesProtocol
{
    
    public func optionalMethod()
    {
        
        
    }
    
}

// You will create a queue in four different ways
// 1. Using an Array
// 2. using a doubly linked list
// 3. Using a ring buffer
// 4. Using two stacks

// Array based implementation


public struct QueueArray<general> : QueuesProtocol
{
    public typealias T = general
    private let queueLimit = 10
    
    var array = [general]()
    
    public mutating func enQueue(item: general) -> Bool {
        
        if(array.count < queueLimit)
        {
             array.append(item)
            
             print(array)
        }
        else
        {
            print("Queue limit reached")
            
        }

        
     return true
        
    }
    
    public mutating func deQueue() -> Bool {
        
        if(isQueueEmpty())
        {
            print("Queue is empty so cannot deque")
                      
             return false
        }
        else
        {
            array.removeFirst()
            
            print("Dequeue operation is done")
            return true
            
        }
     
    }
    
    public func isQueueEmpty() -> Bool {
        
        if(array.isEmpty)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    public func peekItem() {
        
        if(isQueueEmpty())
        {
            print("Queue is empty so cannot peek item")
        }
        else
        {
        print(array.first ?? 0)
        print("array after peek is \(array)")
        }
    }
    

}

extension QueueArray : CustomStringConvertible
{
    
    print(arr)
    
}

 
var queueArrayObect = QueueArray<Any>()
queueArrayObect.enQueue(item: "Ram")
queueArrayObect.enQueue(item: "siva")
queueArrayObect.enQueue(item: "shankara")
queueArrayObect.deQueue()
queueArrayObect.deQueue()
queueArrayObect.deQueue()
queueArrayObect.deQueue()

queueArrayObect.peekItem()

