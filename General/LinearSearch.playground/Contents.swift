import UIKit

// O(1) means the time to access something is independent of the number of items in the collection.

// O(N) would mean the time to access an item is a proportional to the number (N) of items in the collection.
 
 
 //********************************************************************************
    
 // Linear search - Find wether number exist in array or not and give that number index back
    
 // The goal of the linear search algorithm is to find a particular value in an array.

 // Given an array of generic objects, you iterate through the array and compare each object to the object you’re looking for. If the two objects are equal, stop and return the current index. If not, continue to look for the next object as long as there are objects left to compare.

 //****************************************************************************


struct LinearSearchStruct
{
    
    func linearSearch <T:Equatable> (list : [T], object : T) -> Int?
    {
        for (index,obj) in list.enumerated() where obj == object
        {
            return index
        }
        
        return nil
    }
    
}



let lsObject = LinearSearchStruct()
let result = lsObject.linearSearch(list: [1,2,3,4,5,6], object: 3)
print(result ?? "Not availble")




