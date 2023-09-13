//
//  TekilaliVC.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class TekilaliVC: UIViewController {
    
    var tekilaliListesi = [TekilaliKokteyller]()


    @IBOutlet weak var tekilaTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tekilaTableView.delegate = self
        tekilaTableView.dataSource = self
        
        let tk1 = TekilaliKokteyller(kokteyl_id: 1, kokteyl_ad: "MARGARITA", kokteyl_resim: "margarita", kokteyl_malzeme: "60 ml tekila, 30 ml portakal likörü, 25 ml taze lime suyu, 15 ml basit şurup (opsiyonel)", kokteyl_tarif: "Shaker'da tekila, portakal likörü, limon suyu ve buz parçalarını iyice çalkalayın. Kokteyl bardaklarının ağız kısmına lime sürüp tuza bulayın. Karışımı kokteyl bardaklarına paylaştırın. Lime dilimi ile süsleyip servis yapın.")
        let tk2 = TekilaliKokteyller(kokteyl_id: 2, kokteyl_ad: "MEXICAN FIZZ", kokteyl_resim: "mexicanfizz", kokteyl_malzeme: "30 ml tekila, 30 ml crème de cassis, 30 ml köpüren şarap", kokteyl_tarif: "Tekila ve crème de cassisi uzun bir kokteyl bardağına koyup karıştırın. Sonra üzerine yavaşça köpüren şarabı ekleyin.")
        let tk3 = TekilaliKokteyller(kokteyl_id: 3, kokteyl_ad: "MILKY MARGARITA", kokteyl_resim: "milkymargarita", kokteyl_malzeme: "80 ml tekila, 1 çay kaşığı milky oolong, 40 ml portakal Likörü, 40 ml badem veya vanilya sütü, Kırık buz ", kokteyl_tarif: "Tekilayı 75 dereceye kadar ısıtıp çayın üstüne dökün. Karışımı 4 dakika beklettikten sonra bir süzgeç yardımıyla shaker'a dökün. Karışıma portakal likörü ve buz ekleyerek iyice karıştırın. Servis ederken yine bir süzgeç yardımıyla iki margarita bardağına döküp üstüne badem veya vanilya sütü ekleyin")
        let tk4 = TekilaliKokteyller(kokteyl_id: 3, kokteyl_ad: "TEQUILA SUNRUSE", kokteyl_resim: "tequilasunrise", kokteyl_malzeme: "50 ml tekila, 100 ml portakal Suyu, Nar Şurubu", kokteyl_tarif: "Buz ile doldurulmuş highball bardağının içine, tüm malzemeleri ekleyip, en son nar şurubunu ekleyiniz. İsteğe bağlı olarak da yine portakal dilimi ile de süslenebilir.")

        tekilaliListesi.append(tk1)
        tekilaliListesi.append(tk2)
        tekilaliListesi.append(tk3)
        tekilaliListesi.append(tk4)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! DetayVC
        
        gidilecekVC.detay3 = tekilaliListesi[indeks!]
    }
  
}

extension TekilaliVC: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tekilaliListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = tekilaliListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tekilaHucre", for: indexPath) as! TekilaTableViewCell
        
        cell.label.text = gelenListe.kokteyl_ad
        cell.resim.image = UIImage(named: gelenListe.kokteyl_resim!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen : \(indexPath.row)")
        self.performSegue(withIdentifier: "tekilaTodetay", sender: indexPath.row)

    }
}
