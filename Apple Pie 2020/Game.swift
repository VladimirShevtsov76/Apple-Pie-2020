//
//  Game.swift
//  Apple Pie 2020
//
//  Created by Vladimir Shevtsov on 14.03.2021.
//


struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    fileprivate var guessedLetters = [Character]()
    
    init(word: String, incorrectMovesRemaining: Int) {
        self.word = word
        self.incorrectMovesRemaining = incorrectMovesRemaining
    }
    
    var guessedWord: String {
        var wordToShow = ""
        for letter in word {
            if guessedLetters.contains(Character(letter.lowercased())) || letter == "-" || letter == " " {
                wordToShow += String(letter)
            } else {
                wordToShow += "_"
            }
            
        }
        return wordToShow
    }
    
    mutating func playerGuessed(letter: Character) {
        let lowercasedLetter = Character(letter.lowercased())
        guessedLetters.append(lowercasedLetter)
        if !word.lowercased().contains(lowercasedLetter) {
            incorrectMovesRemaining -= 1;
        }
    }
}
