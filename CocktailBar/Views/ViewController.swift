//
//  ViewController.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var kategoriListesi = [Kategoriler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "VİSKİLİ KOKTEYLLER", kategori_resim: "whiskysour")
        let k2 = Kategoriler(kategori_id: 2, kategori_ad: "VODKALI KOKTEYLLER", kategori_resim: "whiterussian")
        let k3 = Kategoriler(kategori_id: 3, kategori_ad: "CİNLİ KOKTEYLLER", kategori_resim: "dirtymartini")
        let k4 = Kategoriler(kategori_id: 4, kategori_ad: "TEKİLALI KOKTEYLLER", kategori_resim: "milkymargarita")
        let k5 = Kategoriler(kategori_id: 5, kategori_ad: "ROMLU KOKTEYLLER", kategori_resim: "caiprinha")
        kategoriListesi.append(k1)
        kategoriListesi.append(k2)
        kategoriListesi.append(k3)
        kategoriListesi.append(k4)
        kategoriListesi.append(k5)


    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategoriListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = kategoriListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "anasayfaHucre", for: indexPath) as! AnasayfaTableViewCell
        
        cell.label.text = gelenListe.kategori_ad
        cell.resim.image = UIImage(named: gelenListe.kategori_resim!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "toViskili", sender: nil)
        }
        if indexPath.row == 1 {
            performSegue(withIdentifier: "toVodkali", sender: nil)
        }
        if indexPath.row == 2 {
            performSegue(withIdentifier: "toCinli", sender: nil)
        }
        if indexPath.row == 3 {
            performSegue(withIdentifier: "toTekilali", sender: nil)
        }
        if indexPath.row == 4 {
            performSegue(withIdentifier: "toRomlu", sender: nil)
        }
    }
    
    
}

