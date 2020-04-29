import Foundation

// In this pivot value is middle one it will help in sorted array inputs

public func medianOfThree<T : Comparable>(a:inout[T],low:Int,high:Int) -> Int {
    
    let center = (low+high)/2
    
    if(a[low]>a[center])
    {
        a.swapAt(low, center)
    }
    
    if(a[low]>a[high])
    {
        a.swapAt(low, high)
    }
    
    if(a[center]>a[high])
    {
        a.swapAt(center, high)
    }
    
    print(center)
    print(a)

    return center
}

public func quickSortMedian<T:Comparable>(a: inout[T],low:Int,high:Int) {
    
    if(low<high)
    {
        
        let pivoitIndex = medianOfThree(a: &a, low: low, high: high)
        a.swapAt(pivoitIndex, high)
        
        let pivot = partitionLumuto(a: &a, low: low, high: high)
        quicksortLomuto(a: &a, low: low, high: pivot-1)
        quicksortLomuto(a: &a, low: pivot+1, high: high)
    }
}
