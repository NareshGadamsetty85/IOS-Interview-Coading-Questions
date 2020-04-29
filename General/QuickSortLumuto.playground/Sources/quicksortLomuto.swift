import Foundation

// Issues in Native approach can be resolved using Lumutos partition technique

// This will help to find pivot and make sure before pivot all are lesser values and after pivot all are greater values
    
   public func partitionLumuto<T : Comparable>(a: inout [T], low : Int, high : Int)->Int
    {
        
        let pivot = a[high]
        
        var i = low
        
        for j in low..<high
        {
            if a[j] <= pivot
            {
                a.swapAt(i,j)
                i += 1
            }
        }
        
        a.swapAt(i, high)
        return i
    }
    
public func quicksortLomuto<T:Comparable>(a: inout[T],low : Int , high :Int)
{
        if(low < high)
        {
            let pivot = partitionLumuto(a: &a, low: low, high: high)
            quicksortLomuto(a: &a, low: low, high: pivot-1)
            quicksortLomuto(a : &a, low: pivot+1, high: high)
        }
}

// Issues with lumutos partitioning
// 1. If the array is already sorted then it wont efficient
// 2. If array contains duplicates then also it wont efficient

//Choosing the first or last element of an already sorted array as a pivot makes Quicksort perform much like
//insertion sort, which results in a worst-case performance of O(n²).


/*
 When does the worst case of Quicksort occur?
The answer depends on strategy for choosing pivot. In early versions of Quick Sort where leftmost (or rightmost) element is chosen as pivot, the worst occurs in following cases.
1) Array is already sorted in same order.
2) Array is already sorted in reverse order.
3) All elements are same (special case of case 1 and 2)

Since these cases are very common use cases, the problem was easily solved by choosing either a random index for the pivot, choosing the middle index of the partition or (especially for longer partitions) choosing the median of the first, middle and last element of the partition for the pivot. With these modifications, the worst case of Quick sort has less chances to occur, but worst case can still occur if the input array is such that the maximum (or minimum) element is always chosen as pivot.
 */
