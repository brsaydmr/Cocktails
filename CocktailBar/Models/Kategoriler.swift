//
//  Kategoriler.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import Foundation


class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    var kategori_resim:String?
    
    init(kategori_id: Int, kategori_ad: String, kategori_resim: String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
        self.kategori_resim = kategori_resim
    }
    
    init() {
        
    }
}
