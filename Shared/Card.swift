//
//  Card.swift
//  BlackJack
//
//  Created by Kelsey Archer on 10/1/22.
//

import Foundation



struct Card: Identifiable {
    var suit: String
    var pip: String
    var name: String{
        pip + " of " + suit
    }
    var id: String{
        name
    }
    var value : Int {
        if pip == "Jack" || pip == "Queen" || pip == "King" {
            return 10
        }
        if pip == "Ace" {
            return 11
        }
        else {
            return Int(pip)!
        }
            
        }
    }

   
//enum PIP: String, CaseIterable, Identifiable {
//    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
//}

var Suit = ["Hearts", "Diamonds", "Clubs", "Spades"]
var Pip = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]



func Deck () -> [Card] {
    var anotherDeck = [Card]()
    for suit in Suit {
        for pip in Pip {
            let currentCard = Card(suit: suit, pip: pip)
            anotherDeck.append(currentCard)
        }
    }
     print ( anotherDeck)
    return anotherDeck
}

