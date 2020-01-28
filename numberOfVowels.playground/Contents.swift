import UIKit

// need to loop through string, counting vowels
// case-insensitive, so lowercase() first

func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
    let lowercaseString = string.lowercased()
    var vowelCount = 0
    for character in lowercaseString {
        switch character {
        case "a", "e", "i", "o", "u":
            vowelCount += 1
        case "y":
            if isYAVowel {
                vowelCount += 1
            }
        default:
            break
        }
    }
    return vowelCount
}

print(numberOfVowels(in: "Polly wants a cracker!"))
print(numberOfVowels(in: "POLLY WANTS A CRACKER!"))
print(numberOfVowels(in: "Polly wants a cracker!", isYAVowel: true))
print(numberOfVowels(in: "POLLY WANTS A CRACKER!", isYAVowel: true))
print(numberOfVowels(in: "Rhythm"))
print(numberOfVowels(in: "Rhythm", isYAVowel: true))



// my short-as-possible functional challenge:

func numberOfVowels2(in string: String, isYAVowel: Bool = false) -> Int {
    var vowels = ["a", "e", "i", "o", "u"]
    if isYAVowel { vowels.append("y")}
    return string.lowercased().filter { vowels.contains(String($0)) }.count
}

print("=====")
print(numberOfVowels2(in: "Polly wants a cracker!"))
print(numberOfVowels2(in: "POLLY WANTS A CRACKER!"))
print(numberOfVowels2(in: "Polly wants a cracker!", isYAVowel: true))
print(numberOfVowels2(in: "POLLY WANTS A CRACKER!", isYAVowel: true))
print(numberOfVowels2(in: "Rhythm"))
print(numberOfVowels2(in: "Rhythm", isYAVowel: true))
