import UIKit

/* 1. **Given a String, return a String with each letter uppercased**
 */

//let str = "Hello, there"
//print(str.uppercased())

/*  2. **Given a String, return a String alternating between uppercase and lowercase letters**
 */

//
//let str = "Hello, there"
//var output = String()
//
//for (index,letter) in str.enumerated() {
//    //print(index,letter)
//    index % 2 == 0 ? output.append(String(letter).uppercased()) : output.append(String(letter).lowercased())
//}
//print(output)


/* 3. **Given a String, return a String with all occurrences of a given letter removed** */

//let str = "Hello, there"
//
//func removeLetter(str:String, char: Character) -> String{
//    var output = String()
//
//    for c in str where c != char{
//        output.append(c)
//    }
//
//    return output
//}
//
//print(removeLetter(str: str, char: "l"))

// Array Q1
//
//let input = [1,5,2,4,1,4]
//
//print(input.reduce(0, {$0 > $1 ? $0 : $1}))

//Array Q2
//let input = [1,5,2,4,1,4]
//
//print(input.reduce(input[0], {$0 < $1 ? $0 : $1}))


//Array Q3

//let input = [1,5,2,4,1,4]
//print(input.reduce(0, {$0+$1} ))


//Array Q4
//let input = [3,4.5,7.5,2,1]
//print(input.reduce(0.0, {$0+$1} ) / Double(input.count))

//Array Q5
//let input = [3,4.5,7.5,2,1]
//var n = 3.0
//
//print(input.filter {$0 > n}.reduce(0, +))

//Array Q6
//let input = [3,4.5,7.5,2,1]
//
//print(input.reduce(1, *))

////Array Q7
//var input = [3,6,1,9,4,8]
//input.sort()
//let smallestElement = input[0]
//for num in input where num > smallestElement{
//    print("The second smallest element is \(num)")
//    break
//}

///* optionals 1. **Given an array of type [String?] return an array of [String] removing all nil values**
// */
//let input = [nil, "We", "come", nil, "in", "peace"]
//var output = [String]()
//
//for strOptional in input where strOptional != nil {
//    output.append(strOptional!)
//}
//print(output)

///* 2. **Given an array of type [String?]? return an array of [String] removing all nil values**
// */
//let input: [String?]? = [nil]
//var output = [String]()
//
//if let array = input {
//    for strOptional in array where strOptional != nil {
//        output.append(strOptional!)
//    }
//}
//print(output)

///* 3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**
// */
//let input = [4, nil, 9, 5, nil]
//
//print(input.reduce(0, {
//    guard let number = $1 else {
//        return $0
//    }
//    return $0 + number
//}))

///* 4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**
// */
//let input: [Int?]? = [nil]
//var output = [Int]()
//
//if let array = input {
//    for intOptional in array where intOptional != nil {
//        output.append(intOptional!)
//    }
//}
//print(output)

///* 5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**
// */
//let inputArr = [1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3]
//let n: Int? = nil
//
//var sum = 0
//if let numberToOmmit = n {
//    for number in inputArr {
//        if let num = number, num != numberToOmmit {
//            sum += num
//        }
//    }
//} else {
//    for number in inputArr {
//        if let num = number {
//            sum += num
//        }
//    }
//}
//
//print(sum)

///* 1. **Given an array of type [String], return a copy of the array with all duplicate values removed**
// */
//let input = ["apple", "apple", "banana", "banana", "banana", "cake", "cake"]
//print(Array(Set(input)))

///* 2. **Given a String, find the most frequently occurring letter**
// */
//let input = "Never trust a computer you can't throw out a window ~ Steve Wozniak"
//let alphabet = "abcdefghijklmnopqrstuvwxyz"
//var frequencyDict = [Character: Int]()
//
//for character in input where alphabet.contains(character.lowercased()){
//    if let value = frequencyDict[character] {
//        frequencyDict[character] = value + 1
//    } else {
//        frequencyDict[character] = 1
//    }
//}
//
//var mostFrequent = (Character(" "), 0)
//for (key, value) in frequencyDict where value > mostFrequent.1 {
//    mostFrequent = (key, value)
//}
//
//print("The most frequent letter is \(mostFrequent.0) with \(mostFrequent.1) occurances.")
//
///* 3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**
// */
//let input = [1,1,2,3,3,3,4,5,6,6,7]
//var frequencyDict = [Int: Int]()
//
//for number in input{
//    if let value = frequencyDict[number] {
//        frequencyDict[number] = value + 1
//    } else {
//        frequencyDict[number] = 1
//    }
//}
//
//
//var outputArr = [Int]()
//for (key, value) in frequencyDict where value >= 2 {
//    outputArr.append(key)
//}
//
//print(outputArr.sorted())

///* 4. **Given a String, find the second most frequently occurring letter in a string**
// */
//let input = "Never trust a computer you can't throw out a window ~ Steve Wozniak"
//let alphabet = "abcdefghijklmnopqrstuvwxyz"
//var frequencyDict = [Character: Int]()
//
//for character in input where alphabet.contains(character.lowercased()){
//    if let value = frequencyDict[character] {
//        frequencyDict[character] = value + 1
//    } else {
//        frequencyDict[character] = 1
//    }
//}
//
//var mostFrequent = (Character(" "), 0)
//var secondMostFrequent = mostFrequent
//for (key, value) in frequencyDict where value > mostFrequent.1 {
//    secondMostFrequent = mostFrequent
//    mostFrequent = (key, value)
//}
//
//print("The most frequent letter is \(secondMostFrequent.0) with \(secondMostFrequent.1) occurances.")


///* Closures
//1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**
// */
//let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
//
//print(input.sorted(by: <))

///* 2. **Given an array of type [String], return an array that contains the Strings sorted by length**
// */
//let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
//print(input.sorted(by: {$0.count < $1.count}))

///* 3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**
// */
//let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
//print(input.filter({$0.count >= 4 }))

///* 4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**
// */
//let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
//print(input.reduce("", {$0 + " " + $1}))


///* enums 1. **Given an array of type [Int] and an instance of NumberType (defined below), return an array containing only all the even or odd numbers.**
// */
//enum NumberType {
//    case even([Int])
//    case odd([Int])
//
//    func filtered() -> [Int]{
//        switch self {
//        case .even(let even):
//            return even.filter({$0 % 2 == 0})
//        case .odd(let odd):
//            return odd.filter({$0 % 2 == 1})
//        }
//    }
//}
//
//let input = [1,2,3,4,5,6]
//
//let instance = NumberType.odd
//
//print(instance(input).filtered())


///* 2. **Given a String and an instance of StringType (defined below), return the String either lowercased or uppercased**
// */
//enum StringType {
//    case lowercase(String)
//    case uppercase(String)
//
//    func changeCase() -> String {
//        switch self {
//        case let .lowercase(str):
//            return str.lowercased()
//        case let .uppercase(str):
//            return str.uppercased()
//        }
//    }
//}
//let input = "Design is not just what it looks like and feels like. Design is how it works"
//let stringLowercased = StringType.lowercase(input)
//print(stringLowercased.changeCase())

///* 3. **Given an array of type [FileStatus] (defined below) and an Int, return an array containing only files that were saved more than that many times**
// */
//enum FileStatus: CustomStringConvertible {
//    case unsaved
//    case saved(numberOfVersions: Int)
//    var description: String {
//        switch self {
//        case .unsaved: return "Unsaved File"
//        case let .saved(numberOfVersions): return "File that has been saved \(numberOfVersions) times"
//        }
//    }
//
//    func getVersions() -> Int? {
//        switch self {
//        case .saved(let numberOfVersions):
//            return numberOfVersions
//        default:
//            return nil
//        }
//    }
//}
//
//let input = [FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8)]
//let n = 4
//
//print(input.filter({$0
//    if let numOfVersions = $0.getVersions() {
//        return numOfVersions > n
//    }
//    return false
//}))


