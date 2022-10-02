//
//  gameFunctions.swift
//  BlackJack (iOS)
//
//  Created by Kelsey Archer on 10/2/22.
//

import Foundation
extension ContentView {
    
//To reset the game to start a new game
    func newGame(){
        deck = Deck()
        deck.shuffle()
        dealerCards.append(deck.removeFirst())
        playerCards.append(deck.removeFirst())
        dealerCards.append(deck.removeFirst())
        playerCards.append(deck.removeFirst())
        assert(deck.count == 48)
        held = false
    }
    
    
//To draw an additional card
    func hit () {
        if totalCardValue(playerCards).1 < 21 {
            playerCards.append(deck.removeFirst())
        if totalCardValue(dealerCards).0 < 18 {
            dealerCards.append(deck.removeFirst())
        }}
        
    }

    func hold(){
        while totalCardValue(dealerCards).0 < 18 {
            dealerCards.append(deck.removeFirst())
        }
    }

    
//To calc the value of the cards shown and the total value of all cards. The first output is the value of all but the first cards and the second output the the total value of all cards
    func totalCardValue(_ cards: [Card]) -> (Int,Int) {
        var valueShown = 0
        var valueTotal = 0
        var acePresent = 0
        let dealersDeck = cards.dropFirst()
        for card in cards {
            if card.pip == "Ace"{
                acePresent += 1
            }
            valueTotal += card.value
        }
        for card in dealersDeck {
            valueShown += card.value
        }
            while acePresent != 0 && valueTotal > 21{
                valueTotal -= 10
                acePresent -= 1
            }
        return (valueShown, valueTotal)
        
    }

    
    
}
