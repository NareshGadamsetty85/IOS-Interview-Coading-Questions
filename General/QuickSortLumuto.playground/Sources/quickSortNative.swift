import Foundation

public func quickSortNative<T:Comparable> (a:[T]) -> [T]
{
    guard a.count > 1  else {
        return a
    }
    
    let pivot = a[a.count/2]
    
    let lesserThanPivot = a.filter{$0 < pivot}
    let equal = a.filter{$0 == pivot}
    let greater = a.filter{$0 > pivot}
    
    return quickSortNative(a: lesserThanPivot)+equal+quickSortNative(a: greater)
    
}

//While this naïve implementation is easy to understand, it has some issues:

//1. Calling filter three times on the array is hardly efficient.
//2. Creating a new array for every partition isn’t space efficient.


