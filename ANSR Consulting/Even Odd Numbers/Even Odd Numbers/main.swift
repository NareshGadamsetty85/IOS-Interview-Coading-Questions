//
//  main.swift
//  Algorithms
//
//  Created by Evo-Mac on 07/04/20.
//  Copyright © 2020 Evo-Mac. All rights reserved.
//

import Foundation


//***********************************************************
// Even Odd Problem
//***********************************************************

// Read string from

let inputStr = readLine()

print("stringValue is \(inputStr!)")

let inputIntegerStr = readLine()

if((inputIntegerStr) != nil)
{
    let inputInteger = Int(inputIntegerStr!)
    print("Integer value \(inputInteger!)")
    
    // Checking value is even or odd
    
    if(inputInteger! % 2 == 0)
    {
        print("Even")
    }
    else
    {
        print("Odd")
    }
    
    
    if(inputInteger!.isMultiple(of: 2))
    {
        print("Even by multiple")
    }
    else
    {
        print("Odd by multiple")
    }
    
}


// Read multiple inputs

while let input = readLine()
{
    let intValue = Int(input)
    
   
    guard intValue != nil && intValue! >= 0   else {
        break
    }
        
    if((intValue ?? 0) % 2 == 0)
    {
        //print("\(input) is EvenNumber")
    }
    else
    {
        print(input)
    }
        
}

//***********************************************************



