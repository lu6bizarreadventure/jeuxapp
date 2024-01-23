//
//  LootDetailView.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/23/24.
//

import SwiftUI

struct LootDetailView: View {
    @State var item: LootItem
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(item.rarity.color)
                    .cornerRadius(20.0)
                
                Text(item.type.rawValue).font(.system(size: 60))
            }
            .rotation3DEffect(
                .degrees(isAnimated ? 360 : 0),
                axis: (x: 1.0, y: 0.5, z: 0.0)
            )
            .animation(.bouncy.delay(0.4), value: isAnimated)
            .shadow(color: Color(item.rarity.color), radius: isAnimated ? 100 : 0)
            .animation(.bouncy.delay(0.6), value: isAnimated)
            .task {
                isAnimated = true
            }
            
            Text(item.name).font(.system(size: 30)).bold().foregroundStyle(item.rarity.color)
            if (item.rarity == Rarity.unique) {
                ZStack {
                    if (isAnimated) {
                        Rectangle()
                            .frame(width: 300, height: 40)
                            .foregroundColor(item.rarity.color)
                            .cornerRadius(10.0)
                        Text("Item unique 🏆").foregroundStyle(.white).bold()
                    }
                }.animation(.bouncy.delay(0.4), value: isAnimated)
            }
            
            NavigationStack {
                List {
                    Section {
                        HStack {
                            if (item.game.coverName != nil) {
                                Image(item.game.coverName!)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 58)
                                    .cornerRadius(3.0)
                            } else {
                                ZStack{
                                    Rectangle().frame(width: 40, height: 58)
                                        .foregroundColor(.gray)
                                        .opacity(0.4)
                                    Image(systemName: "rectangle.slash")
                                        .foregroundColor(.black)
                                        .opacity(0.4)
                                }
                            }
                            
                            Text(item.game.name).bold()
                        }
                        Text("In-Game : \(item.name)")
                        if (item.attackStrength != nil){
                            Text("Puissance(ATQ) : \(item.attackStrength!)")
                        }
                        Text("Possédé(s) : \(item.quantity)")
                        Text("Rareté : \(item.rarity.rawValue)")
                        
                        
                    } header: {
                        Text("Information")
                    }
                }
            }
        }
        
        
        
    }
}

#Preview {
    LootDetailView(item: LootItem(quantity: 1, name: "Boule Smash", type: ItemType.magic, rarity: Rarity.unique, attackStrength: 1, game: availableGames[2]))
}
