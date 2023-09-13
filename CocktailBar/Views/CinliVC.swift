//
//  CinliVC.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class CinliVC: UIViewController {

    @IBOutlet weak var cinTableView: UITableView!
    
    var cinliListesi = [CinliKokteyller]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cinTableView.delegate = self
        cinTableView.dataSource = self
        
        let ck1 = CinliKokteyller(kokteyl_id: 1, kokteyl_ad: "BERRY SOUR", kokteyl_resim: "berrysour", kokteyl_malzeme: "50 ml cin, 20 ml orman meyveleri reçeli, 30 ml yaban mersini suyu, 10 ml nar suyu, Garniş: Donmuş böğürtlen veya cranberry", kokteyl_tarif: "Kokteyl karıştırıcısına birkaç buz küpü ile birlikte reçetedeki ölçülere göre tüm malzemeyi koyun ve 15 saniye çalkaladıktan sonra kokteyl süzgeci ile bardağa süzün. Garniş ile süsleyin.")
        let ck2 = CinliKokteyller(kokteyl_id: 2, kokteyl_ad: "BLUE MONDAY", kokteyl_resim: "bluemonday", kokteyl_malzeme: "30 ml cin, 30 ml portakal likörü, 0,6 ml mavi portakal likörü, 90 ml soğutulmuş soda", kokteyl_tarif: "Cin ve portakal likörünü buz dolu highball bardağına doldurun. Mavi portakal likörünü ekleyin. Sodayı da ekleyip, karıştırın.")
        let ck3 = CinliKokteyller(kokteyl_id: 3, kokteyl_ad: "DIRTY MARTINI", kokteyl_resim: "dirtymartini", kokteyl_malzeme: "60 ml cin, 15 ml sek vermut, 15 ml salamura zeytin suyu, Portakal dilimi veya yeşil zeytin", kokteyl_tarif: "Tüm sıvı malzemeleri karıştırma kabında karıştırın. Soğutulmuş martini  bardağına koyun. Portakal dilimi veya yeşil zeytin ile süsleyebilirsiniz​")
        let ck4 = CinliKokteyller(kokteyl_id: 4, kokteyl_ad: "DRY MARTINI", kokteyl_resim: "drymartini", kokteyl_malzeme: "60 ml cin , 7 ml sek vermut,  Limon dilimi, Tek yeşil zeytin ", kokteyl_tarif: "Cin ve vermutu buzlu bir kaba alarak karıştırın. Soğutulmuş kokteyl bardağına dökün. Karışıma limon dilimi sıkın. Servis ederken içine limon dilimi atabilirsiniz veya tek yeşil zeytin ile süsleyebilirsiniz.")
        let ck5 = CinliKokteyller(kokteyl_id: 5, kokteyl_ad: "GIN & TONIC", kokteyl_resim: "ginandtonic", kokteyl_malzeme: "60 ml iyi kalite cin, 120 ml soğutulmuş tonik, 1 veya 2 misket limonu dilimi", kokteyl_tarif: "Cin ve toniği buz dolu old-fashioned bardağa doldurup, iyice karıştırın. Misket limonunu içkinin üzerine sıkıp bardağın içine dilimi bırakı")
        let ck6 = CinliKokteyller(kokteyl_id: 6, kokteyl_ad: "GINFIZZ", kokteyl_resim: "ginfizz", kokteyl_malzeme: "60 ml Cin, 30 ml limon suyu, 1 çay kaşığı şeker, 60-70 ml soda", kokteyl_tarif: "Cin, limon suyu, şekeri buz ile birlikte karıştırın. Üzerini soda ile tamamlayın.")
        let ck7 = CinliKokteyller(kokteyl_id: 7, kokteyl_ad: "GINRICKEY", kokteyl_resim: "ginrickey", kokteyl_malzeme: "60 ml cin, 30 ml taze limon suyu, 90-150 ml soda, Limon dilimi", kokteyl_tarif: "Cin ve limon suyunu buz dolu Highball bardağına dökünüz. Soda ile bardağı tamamlayıp nazikçe karıştırınız. Limon dilimini bardağın üzerine sıkarak, bardağın içine bırakınız.")
        let ck8 = CinliKokteyller(kokteyl_id: 8, kokteyl_ad: "HANKPANKY", kokteyl_resim: "hankypanky", kokteyl_malzeme: "45 ml cin, 45 ml tatlı vermut, 10 ml baharatlı İtalyan likörü, Portakal kabuğu", kokteyl_tarif: "Tüm malzemeleri buzla dolu mixing bardağına doldurup iyice karıştırın. Karışımı soğutulmuş bardağa dökün.")
        let ck9 = CinliKokteyller(kokteyl_id: 9, kokteyl_ad: "CLASSIC MARTINI", kokteyl_resim: "klasikmartini", kokteyl_malzeme: "60 ml cin, 15 ml vermut, Limon veya yeşil zeytin", kokteyl_tarif: "Cin ve vermut buz ile birlikte bir karıştırma kabında karıştırılır. Soğutulmuş martini bardağına karışım dökülür. Limon kabuğunu soyup, bükerek kokteylin içine katılır veya sadece yeşil zeytin ile kokteylinizi süsleyebilirsiniz.")
        let ck10 = CinliKokteyller(kokteyl_id: 10, kokteyl_ad: "LAMOUR", kokteyl_resim: "lamour", kokteyl_malzeme: "60 ml Cin, 2 ml kiraz brendisi, 2 ml nar şurubu, 2 ml taze limon suyu, 2 adet nane yaprağı", kokteyl_tarif: "Tüm malzemeleri bir shaker içinde karıştırın. Üzerinde nane yaprakları ile servis edin.")
        let ck11 = CinliKokteyller(kokteyl_id: 11, kokteyl_ad: "NEGRONI", kokteyl_resim: "negroni", kokteyl_malzeme: "30 ml cin, 30 ml İtalyan vermut (kırmızı bitter), 30 ml tatlı vermut, 60-90 ml soğutulmuş soda, Portakal dilim", kokteyl_tarif: "Cin, İtalyan vermut ve tatlı vermutu buz ile çalkalayın. Buzla doldurulmuş highball bardağa doldurun. İsteğe bağlı soda ile tamamlayın. Portakal dilimi ile süsleyin.")
        let ck12 = CinliKokteyller(kokteyl_id: 12, kokteyl_ad: "PINK MARTINI", kokteyl_resim: "pinkmartini", kokteyl_malzeme: "60 ml iyi kalite cin, 15 ml guava nektarı, 15 ml taze sıkılmış portakal suyu, Portakal kabuğu veya misket limonu", kokteyl_tarif: "Tüm sıvı malzemeleri güçlü şekilde buzla çalkalayın. Soğutulmuş martini bardağına koyun. Bardağın kenarını portakal kabuğu rendesiyle kaplayın. Portakal dilimini sıkın ve içine atın.")
        let ck13 = CinliKokteyller(kokteyl_id: 13, kokteyl_ad: "PINK YEAR", kokteyl_resim: "pinkyear", kokteyl_malzeme: "50 ml cin, 30 ml hibiscus cordial, 20 ml limon suyu, 30 ml greyfurt Garniş: Nane ve nar", kokteyl_tarif: "Kokteyl karıştırıcısına birkaç buz küpü ile birlikte reçetedeki ölçülere göre tüm malzemeyi koyun ve 15 saniye çalkaladıktan sonra kokteyl süzgeci ile bardağa süzün. Garniş ile süsleyin.")
        let ck14 = CinliKokteyller(kokteyl_id: 14, kokteyl_ad: "TOMCOLLINS", kokteyl_resim: "tomcollins", kokteyl_malzeme: "60 ml cin, 30 ml taze limon suyu, 15 ml krema şurup, 45 ml soğutulmuş soda, Limon dilimi, Maraska kirazı", kokteyl_tarif: "Cin, limon suyu ve şurubu buz dolu collins bardağa dökün. Soda ile bardağı tamamlayarak nazikçe karıştırın. Limon dilimi ve kiraz ile süsleyebilirsiniz")


        
        cinliListesi.append(ck1)
        cinliListesi.append(ck2)
        cinliListesi.append(ck3)
        cinliListesi.append(ck4)
        cinliListesi.append(ck5)
        cinliListesi.append(ck6)
        cinliListesi.append(ck7)
        cinliListesi.append(ck8)
        cinliListesi.append(ck9)
        cinliListesi.append(ck10)
        cinliListesi.append(ck11)
        cinliListesi.append(ck12)
        cinliListesi.append(ck13)
        cinliListesi.append(ck14)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! DetayVC
        
        gidilecekVC.detay2 = cinliListesi[indeks!]
    }
    

}

extension CinliVC: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cinliListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = cinliListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cinHucre", for: indexPath) as! CinTableViewCell
        
        cell.label.text = gelenListe.kokteyl_ad
        cell.resim.image = UIImage(named: gelenListe.kokteyl_resim!)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen : \(indexPath.row)")
        self.performSegue(withIdentifier: "cinTodetay", sender: indexPath.row)

    }
}
