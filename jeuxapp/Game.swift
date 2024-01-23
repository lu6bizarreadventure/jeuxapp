//
//  Game.swift
//  jeuxapp
//
//  Created by Lucie GAROFALO on 1/19/24.
//

import Foundation

enum GameGenre {
    case mmorpg, rpg, looter, fps, tps, strategy, unset
}

struct Game: Identifiable, Hashable {
    let name: String
    let id: UUID = UUID()
    let genre: GameGenre
    let coverName : String?
    
    static var emptyGame = Game(name: "", genre: .unset, coverName: nil)
}

// Hesitez pas mettre vos propres jeux dans la liste
let availableGames = [
    Game(name: "Elden Ring", genre: .rpg, coverName: "co4jni"),
    Game(name: "The Witcher III: Wild Hunt", genre: .rpg, coverName: "co1wyy"),
    Game(name: "Super Smash Bros: brawl", genre: .mmorpg, coverName: "co221w"),
    Game(name: "the legend of Zelda: Majora's Mask", genre: .fps, coverName: "co1ujb"),
    Game(name: "Uncharted 4", genre: .looter, coverName: "co1r7h"),
    Game(name: "Dragon Quest XI", genre: .strategy, coverName: "co1x9d"),
    Game(name: "Final Fantasy VII", genre: .rpg, coverName: "co2kx2")
]
