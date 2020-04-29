
// Copyright (c) 2019 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

import Foundation

public func partitionHoare<T: Comparable>( a: inout [T], low: Int, high: Int) -> Int {
  let pivot = a[low]
  var i = low - 1
  var j = high + 1
  
  while true {
    
    repeat { j -= 1 } while a[j] > pivot
    repeat { i += 1 } while a[i] < pivot
 
    if i < j {
      a.swapAt(i, j)
    } else {
      return j
    }
    
  }
}

public func quicksortHoare<T: Comparable>( a: inout [T], low: Int, high: Int) {
  if low < high {
    let p = partitionHoare(a:&a, low: low, high: high)
    quicksortHoare(a:&a, low: low, high: p)
    quicksortHoare(a:&a, low: p + 1, high: high)
  }
}