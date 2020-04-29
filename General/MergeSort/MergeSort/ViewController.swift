//
//  ViewController.swift
//  MergeSort
//
//  Created by Evo-Mac on 22/04/20.
//  Copyright © 2020 Evo-Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let resultArray = self.mergeSort(array: [1,4,18,7,9,2,5,0])
        print(resultArray)
    }
    

    
    
   public func mergeSort<Element>(array : [Element]) -> [Element] where Element : Comparable
    {
        
        guard array.count > 1 else {
            
            return array
        }
        
        let middle = array.count/2
        
        let leftArray = mergeSort(array: Array(array[..<middle]))
        let rightArray = mergeSort(array: Array(array[middle...]))
        
//        print("leftarray\(leftArray)")
//        print("rightArray\(rightArray)")

        return merge(leftArray: leftArray, rightArray: rightArray);
    }
    
    private func merge<Element>(leftArray : [Element], rightArray:[Element])-> [Element] where Element : Comparable
    {
        
        var leftIndex = 0
        var rightIndex = 0
        
        var result : [Element] = []
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count
        {
            
            let leftElement  = leftArray[leftIndex]
            let rightElement = rightArray[rightIndex]
            
            if leftElement < rightElement
            {
               result.append(leftElement)
                leftIndex += 1
            }
            else if leftElement > rightElement
            {
                result.append(rightElement)
                rightIndex += 1
            }
            else
            {
                result.append(leftElement)
                leftIndex += 1
                result.append(rightElement)
                rightIndex += 1
            }
        }
        
        if leftIndex < leftArray.count
        {
            result.append(contentsOf: leftArray[leftIndex...])
            
        }
        
        if(rightIndex < rightArray.count)
        {
            result.append(contentsOf:rightArray[rightIndex...])
        }
        
        
        return result
        
    }
    
    
    
    

}

