//
//  EditItemView.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/26/24.
//

import SwiftUI

struct EditItemView: View {
    @State var item: LootItem

    var body: some View {
        Text(item.name)
//        Form {
//            Section {
//                TextField("Nom de l'objet", text: $item.name)
//                Picker("Rarete", selection: $item.rarity) {
//                    ForEach(Rarity.allCases, id: \.self) { rarity in
//                        Text(String(describing: rarity).capitalized)
//                    }
//                }
//            }
//            
//            Section {
//                Picker("Jeu", selection: $item.game) {
//                    ForEach(availableGames, id: \.self) { game in
//                        Text(String(describing: game.name).capitalized)
//                    }
//                }
//                Stepper("Combien : \(item.quantity)", onIncrement: { item.quantity += 1 }, onDecrement: { item.quantity -= 1})
//            }
//            
//            Section {
//                HStack {
//                    Text("Type")
//                    Spacer()
//                    Text(type.rawValue)
//                }
//                Picker("Type", selection: $item.type) {
//                    ForEach(ItemType.allCases, id: \.self) { type in
//                        Text(String(describing: type.rawValue).capitalized)
//                    }
//                }
//                .pickerStyle(.palette)
//            }
//            
//            Section {
//                VStack {
//                    Toggle("Item d'attaque", isOn: $item.attackItem)
//                    
//                    if item.attackItem {
//                        Stepper("Force d'attaque: \(item.attackStrength)", onIncrement: { item.attackStrength += 1 }, onDecrement: { item.attackStrength -= 1 })
//                    }
//                }
//            }
//            
//        }
        
    }
}

#Preview {
    EditItemView(item: LootItem(quantity: 1, name: "Boule Smash", type: ItemType.magic, rarity: Rarity.rare, attackStrength: 1, game: availableGames[2]))
}
