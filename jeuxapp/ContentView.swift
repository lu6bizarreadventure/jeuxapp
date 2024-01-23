//
//  ContentView.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/19/24.
//

import SwiftUI

class Inventory: ObservableObject {
    //@Published var loot = ["Epée de lumière", "Ifrit", "Cuirasse d'Or", "Aard", "Armure de Chevalier", "Uchigatana", "Armure de l'Empereur"]
    @Published var loot: [LootItem] = [
        LootItem(quantity: 1, name: "Epée de lumière", type: ItemType.dagger, rarity: Rarity.unique, game: availableGames[5]),
        LootItem(quantity: 1, name: "Ifrit", type: ItemType.fire, rarity: Rarity.legendary, game: availableGames[6]),
        LootItem(quantity: 1, name: "Uchigatana", type: ItemType.dagger, rarity: Rarity.common, game: availableGames[0]),
        LootItem(quantity: 1, name: "Aard", type: ItemType.wind, rarity: Rarity.common, game: availableGames[1]),
        LootItem(quantity: 1, name: "Ocarina du temps", type: ItemType.magic, rarity: Rarity.unique, game: availableGames[3])
    ]
    
    func addItem(item: LootItem) {
        loot.append(item)
    }
}

struct ContentView: View {
    @StateObject var inventory = Inventory()
    
    @State var showAddItemView: Bool = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(inventory.loot, id: \.id) { item in
                    HStack {
                        Circle().frame(width: 10, height: 10).foregroundColor(item.rarity.color)
                        VStack {
                            HStack {
                                Text(item.name)
                                Text(item.type.rawValue)
                            }
                            
                            Text("Quantity : \(item.quantity)")
                            
                        }
                    }
                    
                    
                    
                }
            }.sheet(isPresented: $showAddItemView, content: {
                AddItemView()
                    .environmentObject(inventory)
            })
            .navigationBarTitle("Loot")
            .toolbar(content: {
                ToolbarItem(placement: ToolbarItemPlacement.automatic) {
                    Button(action: {
                        showAddItemView.toggle()
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
