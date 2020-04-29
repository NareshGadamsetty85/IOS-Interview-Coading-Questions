import UIKit

//****************************************************************************
// Stack of strings


struct stringStuct{
    
    fileprivate var stringsArray = [String]()
    
    
    
    mutating func push(object : String){
                    
        
      stringsArray.append(object)
      print(stringsArray)
        
     let maximum = stringsArray.max() ?? "0"
     let minimum = stringsArray.min() ?? "0"
        
        print("Max Value is \(maximum)")
        print("Min Value is \(minimum)")
        
    }
    
    
    mutating func pop() -> String?
    {
        
        guard let lastRemovedElement =  stringsArray.popLast() else {
            
           return "no last element"
        }
        
        return lastRemovedElement
    }
    
    
    mutating func peek() -> String?
    {
        
        if let lastElement = stringsArray.last{
            
            return lastElement
        }
        else
        {
           return "no value"

        }
        
        
    }
            
    
}


// Read all elements in array as a string

//Currently, it’s quite hard to visualize what elements are in the stack. Luckily for you, Swift has a built in protocol called CustomStringConvertible that allows you to define how you want to represent an object as a string.

extension stringStuct: CustomStringConvertible
{
   var description: String
   {
    
    let stackTop = "---- Stack ----\n"
    
    let stackElements = stringsArray.reversed().joined(separator: "\n")
    
    return stackTop+stackElements
}
        
}

//****************************************************************************


var stackObject = stringStuct()
stackObject.push(object: "Swift")
stackObject.push(object: "Objective C")
stackObject.push(object: "Apple")
print(stackObject.pop() ?? "No last item to remove")
print(stackObject.peek() ?? "No last item")
stackObject.description
