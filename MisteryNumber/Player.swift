//
//  Player.swift
//  MisteryNumber
//
//  Created by Aurélien Antonio on 19/03/2019.
//  Copyright © 2019 Aurélien Antonio. All rights reserved.
//

import Foundation

class Player { // Je suis la Class Player
    
    let name : String // variable d'instance : elle de l'instance; chaque instance à une valeur différente
    static var intents : [Int] = [] // variable de classe; la valeure est commune à toutes les instances
    
    init(name: String){
        self.name = name
    }
    
    func answer(misteryNumber: Int) -> Bool{
        print("\(name) please choose a number")
        let answer = chooseNumber()
        if Player.intents.contains(answer){
            print("This number as already been selected and is not the correct one, please select an other number. You can play again directly")
            return self.answer(misteryNumber: misteryNumber)
        }
        Player.intents.append(answer)
        print(Player.intents)
        if (misteryNumber == answer){
            print("\(name) You Win")
            return true
        }else{
            print("this is not the misteryNumber, please try again")
            return false
        }
    }
    private func chooseNumber() -> Int{

        if let intent = readLine() {
            if let number = Int(intent){
                return number
            }
        }
        print("Entrez un nombre entier !")
        return chooseNumber()
    }
    
}
