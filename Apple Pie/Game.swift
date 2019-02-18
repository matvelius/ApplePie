//
//  Game.swift
//  Apple Pie
//
//  Created by Matvey on 2/18/19.
//  Copyright © 2019 Matvey. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
//        print("letter appended: \(letter)")
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
//            print("incorrectMovesRemaining = \(incorrectMovesRemaining)")
        }
    }
}
