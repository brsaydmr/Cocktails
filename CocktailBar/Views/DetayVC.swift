//
//  DetayVC.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var malzemelerLabel: UILabel!
    @IBOutlet weak var detayResim: UIImageView!
    @IBOutlet weak var malzemeListesiLabel: UILabel!
    @IBOutlet weak var hazirlanisLabel: UILabel!
    @IBOutlet weak var tarifLabel: UILabel!
    
    var detay:ViskiliKokteyller?
    var detay1:VodkaliKokteyller?
    var detay2:CinliKokteyller?
    var detay3:TekilaliKokteyller?
    var detay4:RomluKokteyller?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detayResim.layer.cornerRadius = 25.0 // İstediğiniz köşe yarıçapı değerini buraya girin
        detayResim.clipsToBounds = true // Resmin köşe yuvarlaması dışına taşan kısımları keser

        
        if let k = detay {

            malzemelerLabel.text = "Malzemeler"
            detayResim.image = UIImage(named: k.kokteyl_resim!)
            malzemeListesiLabel.text = k.kokteyl_malzeme
            hazirlanisLabel.text = "Hazırlanış"
            tarifLabel.text = k.kokteyl_tarif
        }
        if let k = detay1 {

            malzemelerLabel.text = "Malzemeler"
            detayResim.image = UIImage(named: k.kokteyl_resim!)
            malzemeListesiLabel.text = k.kokteyl_malzeme
            hazirlanisLabel.text = "Hazırlanış"
            tarifLabel.text = k.kokteyl_tarif
        }
        if let k = detay2 {

            malzemelerLabel.text = "Malzemeler"
            detayResim.image = UIImage(named: k.kokteyl_resim!)
            malzemeListesiLabel.text = k.kokteyl_malzeme
            hazirlanisLabel.text = "Hazırlanış"
            tarifLabel.text = k.kokteyl_tarif
        }
        if let k = detay3 {

            malzemelerLabel.text = "Malzemeler"
            detayResim.image = UIImage(named: k.kokteyl_resim!)
            malzemeListesiLabel.text = k.kokteyl_malzeme
            hazirlanisLabel.text = "Hazırlanış"
            tarifLabel.text = k.kokteyl_tarif
        }
        if let k = detay4 {

            malzemelerLabel.text = "Malzemeler"
            detayResim.image = UIImage(named: k.kokteyl_resim!)
            malzemeListesiLabel.text = k.kokteyl_malzeme
            hazirlanisLabel.text = "Hazırlanış"
            tarifLabel.text = k.kokteyl_tarif
        }

    }
    

 

}
