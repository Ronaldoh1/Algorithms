// Reverse words in sentense, takes in a sentence and return every other word reversed.
import UIKit

var sentence = "Let's start today by completing a very interesting challenge"


func reverseWordsInSentence(sentence: String) -> String {
    var newSentence = ""
    var allWords = sentence.components(separatedBy: " ")
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 1 {
            let reverseWord = String(word.characters.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else {
            newSentence += word.stringByRemovingVowels()
        }
        
        
    }
    
    return newSentence
}

extension String {
    
    func stringByRemovingVowels() -> String {
        var newWord = self
        
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}


print(reverseWordsInSentence(sentence: sentence))