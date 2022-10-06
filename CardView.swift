//
//  CardView.swift
//  BlackJack (iOS)
//
//  Created by Kelsey Archer on 10/3/22.
//

import SwiftUI

struct CardView: View {
    var card: Card
    let acePixel = CGFloat(50)
    
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
            switch card.value {
            case 11:
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel))
                    .foregroundColor(card.color)
            case 2:
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: (acePixel/2)))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/2))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
            case 3:
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
            case 4:
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/2))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/2))
                    .foregroundColor(card.color)
                }
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/2))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/2))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                }
            case 5:
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                }
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                }
            case 6:
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                }
                
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                }
                
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/3))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                }

            case 7:
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                }
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                }
                
                HStack{
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: acePixel/4))
                    .foregroundColor(card.color)
                    .rotationEffect(Angle(degrees: 180))
                }
            default:
                Image(systemName: "suit.\(card.suit).fill")
                    .font(.system(size: 50))
                    .foregroundColor(card.color)
                
            }
            
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
        CardView(card: Card(suit: "diamond", pip: "7"))
    }
}
