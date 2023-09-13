//
//  Vodkali Kokteyller.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import Foundation

class VodkaliKokteyller {
    var kokteyl_id:Int?
    var kokteyl_ad:String?
    var kokteyl_resim:String?
    var kokteyl_malzeme:String?
    var kokteyl_tarif:String?
    
    init(kokteyl_id: Int, kokteyl_ad: String, kokteyl_resim: String, kokteyl_malzeme: String, kokteyl_tarif: String) {
        self.kokteyl_id = kokteyl_id
        self.kokteyl_ad = kokteyl_ad
        self.kokteyl_resim = kokteyl_resim
        self.kokteyl_malzeme = kokteyl_malzeme
        self.kokteyl_tarif = kokteyl_tarif
    }
    
    init() {
        
    }
}
