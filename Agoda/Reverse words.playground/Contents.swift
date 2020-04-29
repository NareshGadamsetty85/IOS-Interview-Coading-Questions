import UIKit

/*Reverse words in expression :

Write a function that takes a string of words and returns them in reverse order (separated by single spaces)

Example : “agoda best apps” will return “apps best agoda”
*/

struct reverseWords{
    
    func reverseWords(inputWords: String) -> String {
        
        
        let words  = inputWords.components(separatedBy: " ")
        
        var result = ""
        
        // This will reverse the elements in a collection
        
        for word in words.reversed()
        {
            result += "\(word) "
        }
        
        print (result)
        
        return result
    }

}


let rwObject = reverseWords()
let result = rwObject.reverseWords(inputWords: "I am a power ful soul")
print(result)
