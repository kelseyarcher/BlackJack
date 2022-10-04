//
//  CardView.swift
//  BlackJack (iOS)
//
//  Created by Kelsey Archer on 10/3/22.
//

import SwiftUI

struct CardView: View {
    var card: Card
    var body: some View {
        VStack{
            HStack{
            Text(card.pip)
                .font(.system(size: 10))
                .foregroundColor(card.color)
            Spacer()
            }.padding(.leading, 3)
            HStack{
            Image(systemName: "suit.\(card.suit).fill").font(.system(size: 10))
                .foregroundColor(card.color)
                
                Spacer()
            }
            Image(systemName: "suit.\(card.suit).fill")
                .font(.system(size: 50))
                .foregroundColor(card.color)
            
            HStack{
            
            Image(systemName: "suit.\(card.suit).fill").font(.system(size: 10))
                .foregroundColor(card.color)
              Spacer()
                
            }.rotationEffect(Angle(degrees: 180))
            HStack{
            Text(card.pip)
                .font(.system(size: 10))
                .foregroundColor(card.color)
            Spacer()
            }.padding(.leading, 3)
                .rotationEffect(Angle(degrees: 180))
            
        }
        .frame(width: 75, height: 105)
        .background(.thickMaterial)
        .cornerRadius(6)
        .shadow(radius: 3)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(suit: "heart", pip: "A"))
    }
}
