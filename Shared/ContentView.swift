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
    @State var held = false

    var body: some View {
        GeometryReader { geo in
             
        ZStack {
            
            Color.green.ignoresSafeArea()
            
            if held == true || totalCardValue(playerCards).1 > 21{
            if totalCardValue(playerCards).1 > 21 || (totalCardValue(dealerCards).1<=21 && totalCardValue(playerCards).1<=totalCardValue(dealerCards).1){
                Text("Dealer Wins")
            }
            else {
                Text("Player Wins")
            }}
            
            
            VStack{
                // Dealer's View
                ZStack{
                VStack{
                    Button("New Game"){
                        playerCards.removeAll()
                        dealerCards.removeAll()
                        newGame()
                        print(playerCards.count)
                    }
                    Text ("Dealer")
                    Text("Blank")
                    if dealerCards.isEmpty {
                        Text ("Loading")
                    }
                    else {
                        ForEach (dealerCards.dropFirst()){ currentCard in
                            CardView(card: currentCard)
                        }
                    }
                    Text(totalCardValue(dealerCards).0, format: .number)
                    Spacer()
                }
                    if totalCardValue(dealerCards).0 > 21 || (totalCardValue(dealerCards).1 > 21 && held == true){
                        Spacer()
                        Text("Dealer Busts")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.red)
                            .frame(width: geo.size.width)
                            .background(.blue)
                    }
                        
                }
                
                
                
                
                
                
                
                // Player's View
                ZStack {
                    VStack {
                        Text ("Player")
                        if playerCards.isEmpty {
                            Text ("Loading")
                        }
                        else {
                            ForEach (playerCards) { currentCard in
                               CardView(card: currentCard)
                            }
                        }
                        Text(totalCardValue(playerCards).1, format: .number)
                        
                        Spacer()
                        
                        HStack{
                            
                            Spacer()
                            
                            Button ("Hit"){
                            hit()
                            }.disabled(held)
                            
                            Spacer()
                            
                            Button ("Hold") {
                                hold()
                                held = true
                            }.disabled(totalCardValue(playerCards).1 > 21 )
                            
                            Spacer()
                        }
                    }
                    if totalCardValue(playerCards).1 > 21 {
                        Spacer()
                        Text("Player Busts")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.red)
                            .frame(width: geo.size.width)
                            .background(.blue)
                }
            }
            .onAppear{
                newGame()
            }
        }
    
            
        }
    }
}
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
