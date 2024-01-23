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
    Game(name: "Elden Ring", genre: .rpg, coverName: "Assets/co4jni.png"),
    Game(name: "The Witcher III: Wild Hunt", genre: .rpg, coverName: "Assets/co1wyy.png"),
    Game(name: "Super Smash Bros: brawl", genre: .mmorpg, coverName: "Assets/co221w.png"),
    Game(name: "the legend of Zelda: Majora's Mask", genre: .fps, coverName: "Assets/co1ujb.png"),
    Game(name: "Uncharted 4", genre: .looter, coverName: "Assets/co1r7h.png"),
    Game(name: "Dragon Quest XI", genre: .strategy, coverName: "Assets/co1x9d.png"),
    Game(name: "Final Fantasy VII", genre: .rpg, coverName: "Assets/co2kx2.png")
]
