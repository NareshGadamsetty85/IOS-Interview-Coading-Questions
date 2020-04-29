import UIKit


//struct NcrFormula {


func computation(n : Int , r: Int)
{
    //ncr =  n! /(r!*(n-r)!)
    //𝐶(𝑛,𝑟)=(𝑛𝑟)=𝑛!(𝑟!(𝑛−𝑟)!)=?
    
    let result = (factorial(n: n))/((factorial(n: r))*(factorial(n:(n-r))))
    
    print(result)
    
}



func factorial(n : Int) -> Int {
    
    var result : Int = 1
    
    for i in 1...n
    {
        result = result * i
    }
    
    //print(result)
    
    return result
    
}

computation(n: 5, r: 2)


//}


