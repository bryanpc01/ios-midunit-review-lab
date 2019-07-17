## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`

```swift
let str = "Hello, there"
print(str.uppercased())
```

2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`

```swift
let str = "Hello, there"
var output = String()

for (index,letter) in str.enumerated() {
    //print(index,letter)
    index % 2 == 0 ? output.append(String(letter).uppercased()) : output.append(String(letter).lowercased())
}
print(output)
```

3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`

```swift
let str = "Hello, there"

func removeLetter(str:String, char: Character) -> String{
    var output = String()

    for c in str where c != char{
        output.append(c)
    }

    return output
}

print(removeLetter(str: str, char: "e"))
```

## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`

```swift
let input = [1,5,2,4,1,4]

print(input.reduce(0, {$0 > $1 ? $0 : $1}))
```

2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`

```swift
let input = [1,5,2,4,1,4]

print(input.reduce(input[0], {$0 < $1 ? $0 : $1}))
```

3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`

Output: `17`

```swift
let input = [1,5,2,4,1,4]
print(input.reduce(0, {$0+$1} ))
```

4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

Output: `3.6`

```swift
let input = [3,4.5,7.5,2,1]
print(input.reduce(0.0, {$0+$1} ) / Double(input.count))
```

5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`

```swift
let input = [3,4.5,7.5,2,1]
var n = 3.0

print(input.filter {$0 > n}.reduce(0, +))
```

6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`

```swift
let input = [3,4.5,7.5,2,1]

print(input.reduce(1, *))
```

7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

Output: `3`

```swift
var input = [3,6,1,9,4,8]
input.sort()
let smallestElement = input[0]
for num in input where num > smallestElement{
    print("The second smallest element is \(num)")
    break
}
```

## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`

```swift
let input = [nil, "We", "come", nil, "in", "peace"]
var output = [String]()

for strOptional in input where strOptional != nil {
    output.append(strOptional!)
}
print(output)
```

2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`

```swift
let input: [String?]? = [nil]
var output = [String]()

if let array = input {
    for strOptional in array where strOptional != nil {
        output.append(strOptional!)
    }
}
print(output)
```

3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`

```swift
let input = [4, nil, 9, 5, nil]

print(input.reduce(0, {
    guard let number = $1 else {
        return $0
    }
    return $0 + number
}))
```

4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `nil`

Output: `0`

```swift
let input: [Int?]? = [nil]
var output = [Int]()

if let array = input {
    for intOptional in array where intOptional != nil {
        output.append(intOptional!)
    }
}
print(output)
```

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`

```swift
let inputArr = [1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3]
let n: Int? = nil

var sum = 0
if let numberToOmmit = n {
    for number in inputArr {
        if let num = number, num != numberToOmmit {
            sum += num
        }
    }
} else {
    for number in inputArr {
        if let num = number {
            sum += num
        }
    }
}

print(sum)
```


## Dictionaries

1. **Given an array of type [String], return a copy of the array with all duplicate values removed**

Input: `["apple", "apple", "banana", "banana", "banana", "cake", "cake"]`

Output: `["apple", "banana", "cake"]`

```swift
let input = ["apple", "apple", "banana", "banana", "banana", "cake", "cake"]
print(Array(Set(input)))
```

2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`

```swift
let input = "Never trust a computer you can't throw out a window ~ Steve Wozniak"
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var frequencyDict = [Character: Int]()

for character in input where alphabet.contains(character.lowercased()){
    if let value = frequencyDict[character] {
        frequencyDict[character] = value + 1
    } else {
        frequencyDict[character] = 1
    }
}

var mostFrequent = (Character(" "), 0)
for (key, value) in frequencyDict where value > mostFrequent.1 {
    mostFrequent = (key, value)
}

print("The most frequent letter is \(mostFrequent.0) with \(mostFrequent.1) occurances.")
```

3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`

```swift
let input = [1,1,2,3,3,3,4,5,6,6,7]
var frequencyDict = [Int: Int]()

for number in input{
    if let value = frequencyDict[number] {
        frequencyDict[number] = value + 1
    } else {
        frequencyDict[number] = 1
    }
}


var outputArr = [Int]()
for (key, value) in frequencyDict where value >= 2 {
    outputArr.append(key)
}

print(outputArr.sorted())
```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`

```swift
let input = "Never trust a computer you can't throw out a window ~ Steve Wozniak"
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var frequencyDict = [Character: Int]()

for character in input where alphabet.contains(character.lowercased()){
    if let value = frequencyDict[character] {
        frequencyDict[character] = value + 1
    } else {
        frequencyDict[character] = 1
    }
}

var mostFrequent = (Character(" "), 0)
var secondMostFrequent = mostFrequent
for (key, value) in frequencyDict where value > mostFrequent.1 {
    secondMostFrequent = mostFrequent
    mostFrequent = (key, value)
}

print("The most frequent letter is \(secondMostFrequent.0) with \(secondMostFrequent.1) occurances.")
```


## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`

```swift
let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]

print(input.sorted(by: <))
```

2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`

```swift
let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
print(input.sorted(by: {$0.count < $1.count}))
```

3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`

```swift
let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
print(input.filter({$0.count >= 4 }))
```

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`

```swift
let input = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
print(input.reduce("", {$0 + " " + $1}))
```

## Enums


1. **Given an array of type [Int] and an instance of NumberType (defined below), return an array containing only all the even or odd numbers.**

```swift
enum NumberType {
    case even([Int])
    case odd([Int])

    func filtered() -> [Int]{
        switch self {
        case .even(let even):
            return even.filter({$0 % 2 == 0})
        case .odd(let odd):
            return odd.filter({$0 % 2 == 1})
        }
    }
}

let input = [1,2,3,4,5,6]

let instance = NumberType.odd

print(instance(input).filtered())

```

Input: `[1,2,3,4,5,6], NumberType.odd`

Output: `[1,3,5]`

2. **Given a String and an instance of StringType (defined below), return the String either lowercased or uppercased**

```swift
enum StringType {
    case lowercase(String)
    case uppercase(String)

    func changeCase() -> String {
        switch self {
        case let .lowercase(str):
            return str.lowercased()
        case let .uppercase(str):
            return str.uppercased()
        }
    }
}
let input = "Design is not just what it looks like and feels like. Design is how it works"
let stringLowercased = StringType.lowercase(input)
print(stringLowercased.changeCase())
```

Input: `"Design is not just what it looks like and feels like. Design is how it works", .uppercase`

Output: ``"DESIGN IS NOT JUST WHAT IT LOOKS LIKE AND FEELS LIKE. DESIGN IS HOW IT WORKS"``

3. **Given an array of type [FileStatus] (defined below) and an Int, return an array containing only files that were saved more than that many times**

```swift
enum FileStatus: CustomStringConvertible {
    case unsaved
    case saved(numberOfVersions: Int)
    var description: String {
        switch self {
        case .unsaved: return "Unsaved File"
        case let .saved(numberOfVersions): return "File that has been saved \(numberOfVersions) times"
        }
    }

    func getVersions() -> Int? {
        switch self {
        case .saved(let numberOfVersions):
            return numberOfVersions
        default:
            return nil
        }
    }
}

let input = [FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8)]
let n = 4

print(input.filter({$0
    if let numOfVersions = $0.getVersions() {
        return numOfVersions > n
    }
    return false
}))
```

Input: `[FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8)], 4`

Output: `[File that has been saved 5 times, File that has been saved 8 times]`
