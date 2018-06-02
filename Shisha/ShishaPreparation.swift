//
//  ShishaPreparation.swift
//  Shisha
//
//  Created by Mattias Careem on 6/2/18.
//  Copyright © 2018 Mattias Careem. All rights reserved.
//

import Foundation

extension Array
{
    func random() -> Element
    {
        let numElements = self.count
        let randomBoundedInt = Int(arc4random_uniform(UInt32(numElements)))
        return self[randomBoundedInt]
    }
}

class ShishaPreparation {
    
    //MARK: Parameters
    private static var preparationPhrases =
        ["Filling water...",
         "Sealing grommet...",
         "Inserting tray...",
         "Mixing and fluffing leaves...",
         "Heating coal...",
         "Cleaning hose...",
         "Ready to smoke..."]
    
    private var readyStatePhrases = ["استمتع بوقتك",
                                     "Ah men fan va gött med lite rök!",
                                     "Se upp, ingen rök utan eld!",
                                     "Enjoy habibi"]
    
    private static var nextPhase: Int = 0
    public var hasNextPreparationPhase: Bool
    
    init() {
        hasNextPreparationPhase = true
    }
    
    func getNextPreparationPhase() -> String {
        ShishaPreparation.nextPhase += 1
        if ShishaPreparation.nextPhase >= ShishaPreparation.preparationPhrases.count {
            hasNextPreparationPhase = false
            return getReadyState()
        } else {
            return ShishaPreparation.preparationPhrases[ShishaPreparation.nextPhase - 1]
        }
    }
    
    func getReadyState() -> String {
        return readyStatePhrases.random()
    }
}
