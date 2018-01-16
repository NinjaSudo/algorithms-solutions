//: Playground - noun: a place where people can play

import PlaygroundSupport

// Find Palindrome String
func isPalindrome(_ string: String) -> Int {
    let strippedString = string.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
    let length = strippedString.count
    
    if length > 1 {
        return palindrome(strippedString.lowercased(), left: 0, right: length - 1)
    }
    
    return 0
}

private func palindrome(_ string: String, left: Int, right: Int) -> Int {
    if left >= right { return 1 }
    
    let lhs = string[string.index(string.startIndex, offsetBy: left)]
    let rhs = string[string.index(string.startIndex, offsetBy: right)]
    
    if lhs != rhs { return 0 }
    
    return palindrome(string, left: left + 1, right: right - 1)
}

let testFalse = "race a car"
let testEdge = "''"
let testPositive = "A man, a plan, a canal: Panama"
isPalindrome(testFalse)
isPalindrome(testPositive)
isPalindrome(testEdge)
