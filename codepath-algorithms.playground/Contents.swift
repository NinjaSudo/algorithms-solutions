//: Playground - noun: a place where people can play

import PlaygroundSupport

// Find Palindrome String
func isPalindrome(_ A: String) -> Int {
    let strippedString = A.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
    let word = strippedString.lowercased().filter { $0 != " " }
    return (word == String(word.reversed())) ? 1 : 0
}

let testFalse = "race a car"
let testEdge = "\""
let testPositive = "A man, a plan, a canal: Panama"
isPalindrome(testFalse)
isPalindrome(testPositive)
isPalindrome(testEdge)

// convert roman numerals to integer

func romanToInteger(_ A: String) -> Int {
    var result: Int = 0
    let length: Int = A.count
    for index in (0...length-1).reversed() {
        let c: Character = A[A.index(A.startIndex, offsetBy: index)]
        switch c {
        case "I":
            result += result >= 5 ? -1 : 1
        case "V":
            result += 5
        case "X":
            result += 10 * (result >= 50 ? -1 : 1)
        case "L":
            result += 50
        case "C":
            result += 100 * (result >= 500 ? -1 : 1)
        case "D":
            result += 500
        case "M":
            result += 1000
        default:
            break
        }
    }
    return result
}
let twenty = "XX"
let fourteen = "XIV"
romanToInteger(twenty) // 20
romanToInteger(fourteen) // 14

// find the noble integer in an array

func solve(_ A: [Int]) -> Int {
    let sorted = A.sorted()
    let length = sorted.count
    for index in 0..<length-1 {
        if sorted[index] == sorted[index + 1] {
            continue
        }
        if sorted[index] == length - index - 1 {
            return 1
        }
    }
    if sorted[length - 1] == 0 {
        return 1
    }
    
    return -1
}

let testCaseA = [5, 6, 2]
let testCaseD = [-4, -2, 0, -1, -6]
let testCaseF = [-1, -2, 0, 0, 0, -3]
let testCaseC = [5, 2, 3, 9, 9, 9, 9, 9]
let testCaseB = [1, 5, 6, 2, 8, 1, 9, 2]
let testCaseG = [-4, 7, 5, 3, 5, -4, 2, -1, -9, -8, -3, 0, 9, -7, -4, -10, -4, 2, 6, 1, -2, -3, -1, -8, 0, -8, -7, -3, 5, -1, -8, -8, 8, -1, -3, 3, 6, 1, -8, -1, 3, -9, 9, -6, 7, 8, -6, 5, 0, 3, -4, 1, -10, 6, 3, -8, 0, 6, -9, -5, -5, -6, -3, 6, -5, -4, -1, 3, 7, -6, 5, -8, -5, 4, -3, 4, -6, -7, 0, -3, -2, 6, 8, -2, -6, -7, 1, 4, 9, 2, -10, 6, -2, 9, 2, -4, -4, 4, 9, 5, 0, 4, 8, -3, -9, 7, -8, 7, 2, 2, 6, -9, -10, -4, -9, -5, -1, -6, 9, -10, -1, 1, 7, 7, 1, -9, 5, -1, -3, -3, 6, 7, 3, -4, -5, -4, -7, 9, -6, -2, 1, 2, -1, -7, 9, 0, -2, -2, 5, -10, -1, 6, -7, 8, -5, -4, 1, -9, 5, 9, -2, -6, -2, -9, 0, 3, -10, 4, -6, -6, 4, -3, 6, -7, 1, -3, -5, 9, 6, 2, 1, 7, -2, 5]
solve(testCaseB)
solve(testCaseA)
solve(testCaseC)
solve(testCaseD)
solve(testCaseF)
solve(testCaseG)

// Max Sum Sub Array

func maxSubArray(_ A: [Int]) -> Int {
    var nums = A
    var best = nums[0]
    var current = nums[0]
    print(nums.count)
    for index in 1..<nums.count {
        current = max(current + nums[index], nums[index])
        best = max(current, best)
    }
    
    return best
}

let testSub = [-2,1,-3,4,-1,2,1,-5,4,-2,1,-3,4,-1,2,1,-5,4,-2,1,-3,4,-1,2,1,-5,4,-2,1,-3,4,-1,2,1,-5,4]
maxSubArray(testSub)
