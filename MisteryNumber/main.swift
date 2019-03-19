//
//  main.swift
//  MisteryNumber
//
//  Created by Aurélien Antonio on 19/03/2019.
//  Copyright © 2019 Aurélien Antonio. All rights reserved.
//

import Foundation

print("""
    Welcome to our Mistery Number Game:
    You must discover what is the mistery number in the minimum attempts
    You can't use a number already used !
""")

let misteryNumber = Int.random(in: 1...100)
print(misteryNumber)
var found = false

let p1 = Player(name: "Tonio") // Je suis une Instance de player -> Une instance de class c'est l'appel à la classe
let p2 = Player(name: "Massi")

repeat {
   found = p1.answer(misteryNumber: misteryNumber)
    if(!found){
        found = p2.answer(misteryNumber: misteryNumber)
    }
} while !found

