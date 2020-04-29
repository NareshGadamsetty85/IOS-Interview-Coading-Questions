import UIKit

// Generic Stack

struct genericStack<itemType>
{
    
    // Setting max limit to the stack
    
    let stackLimit = 10
    
    var array = [itemType]()
    
    // It will push element to the collection

    mutating func push(item:itemType) {
        
        guard array.count < stackLimit else {
            
            print("Stack is already full cannot able to push the item")
            return
        }
        
        array.append(item)
        print(array)
    }
    
    // It will remove and returns last element from the collection
    
    mutating func pop() {
        
        
        // This pop opertion will remove last element from stack if stack is empty then it will return nil so need to check array/collection/stack count first
        
        // Here can check by seeing the count of by checking output of poplast
        // guard let lastRemovedElement =  array.popLast() else {
        // return "no last element"
        // }
        
        guard array.count != 0 else {
            print("Collection is empty to pop element from stack")
            return
        }
        
        
        let lastElement = array.popLast()
        print("Removed element from collection \(lastElement!)")
        print("Collection elements after pop \(array)")
    }
    
    // It will returns last element from the collection
    
    mutating func peek()
    {
        
   // This peek opertion will return last element from stack if stack is empty then it will return nil so need to check array/collection/stack count first
        
        guard array.count != 0  else {
            print("Collection is empty to peek element from stack")
            return
        }
        
        let topitem = array.last
        print(topitem ?? 0)
    }
    
}

var gsObject = genericStack<Any>()

gsObject.push(item: "Book 1")
gsObject.push(item: "Book 2")
gsObject.push(item: "Book 3")
gsObject.push(item: "Book 4")
gsObject.push(item: "Book 5")
gsObject.push(item: "Book 6")
gsObject.peek()
gsObject.pop()

