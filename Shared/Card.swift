//
//  Card.swift
//  BlackJack
//
//  Created by Kelsey Archer on 10/1/22.
//

import Foundation
import SwiftUI



struct Card: Identifiable {
    var suit: String
    var pip: String
    var name: String{
        pip + " of " + suit
    }
    var color: Color? {
        if suit == "heart" || suit == "diamond"{
            return .red
        }
        else {
            return nil
        }
    }
    var id: String{
        name
    }
    var value : Int {
        if pip == "J" || pip == "Q" || pip == "K" {
            return 10
        }
        if pip == "A" {
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

var Suit = ["heart", "diamond", "club", "spade"]
var Pip = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]



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

