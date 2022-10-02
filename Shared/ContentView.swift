//
//  ContentView.swift
//  Shared
//
//  Created by Kelsey Archer on 10/1/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var deck = [Card]()
    @State var dealerCards = [Card]()
    @State var playerCards = [Card]()
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack{
                
                HStack(spacing:30) {
                    Button("Shuffle Deck"){
                        deck.shuffle()
                    }
                    Button("New Game"){
                        playerCards.removeAll()
                        dealerCards.removeAll()
                        newGame()
                        print(playerCards.count)
                    }
                    
                }
                Text ("Dealer")
                Text("Blank")
                if dealerCards.isEmpty {
                    Text ("Loading")
                }
                else {
                    ForEach (dealerCards.dropFirst()){ card in
                        Text(card.name)
                    }
                }
                Spacer ()
                Text ("Player")
                if playerCards.isEmpty {
                    Text ("Loading")
                }
                else {
                    ForEach (playerCards) { card in
                        Text(card.name)
                    }
                    
                }
                Spacer()
                Button ("Hit"){
                    hit()
                }
                
            }
            .onAppear{
                newGame()
            }
        }
    }
    
    func newGame(){
        deck = Deck()
        deck.shuffle()
        dealerCards.append(deck.removeFirst())
        playerCards.append(deck.removeFirst())
        dealerCards.append(deck.removeFirst())
        playerCards.append(deck.removeFirst())
        assert(deck.count == 48)
        
    }
    func hit () {
        if totalCardValue(dealerCards).0 <= 17 {
            dealerCards.append(deck.removeFirst())
            playerCards.append(deck.removeFirst())
        }
        if totalCardValue(playerCards).1 >= 21 {
            return
        }
        else{
            playerCards.append(deck.removeFirst())
        }
    }
    
    func totalCardValue(_ cards: [Card]) -> (Int,Int) {
        var valueShown = 0
        var valueTotal = 0
        var acePresent = 0
        for card in cards {
            if card.pip == "Ace"{
                acePresent += 1
                
            }
            valueTotal += card.value
            let dealersDeck = cards.dropFirst()
            for card in dealersDeck {
                valueShown += card.value
                
            }
        }
        if cards.contains(where: { $0.pip == "Ace" }){
            if valueShown > 21{
                valueShown -= 10
            }
        }
        return (valueShown, valueTotal)
        
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
