//
//  VodkaliVC.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class VodkaliVC: UIViewController {
    
    var vodkaListesi = [VodkaliKokteyller]()

    @IBOutlet weak var vodkaTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vodkaTableView.delegate = self
        vodkaTableView.dataSource = self
        
        let vo1 = VodkaliKokteyller(kokteyl_id: 1, kokteyl_ad: "COSMOPOLITAN", kokteyl_resim: "cosmopolitan", kokteyl_malzeme: "45 ml limon votkası, 45 ml portakal likörü, 30 ml limon suyu, 0,6-1,2 ml çay kaşığı yabanmersini suyu, Limon kabuğu büklümü", kokteyl_tarif: "Sıvıları buzla birlikte karıştırın. Soğutulmuş kokteyl bardağına dökün ve limon kabuğu ile süsleyin")
        
        
        let vo2 = VodkaliKokteyller(kokteyl_id: 2, kokteyl_ad: "ESPRESSO MARTINI", kokteyl_resim: "espressomartini", kokteyl_malzeme: "35 ml votka, 15 ml kahve likörü, 25 ml soğuk espresso, Şeker Şurubu, 3 espresso çekirdeği", kokteyl_tarif: "Tüm malzemeleri içinde buz olan shaker'a ekleyip, iyice karıştırdıktan sonra, martini bardağında servis edilir. İsteğe bağlı olarak kokteylinizi kahve çekirdeği ile de süsleyebilirsiniz.")
        
        
        let vo3 = VodkaliKokteyller(kokteyl_id: 3, kokteyl_ad: "PINEAPPLE FLIRTINI", kokteyl_resim: "pineapple", kokteyl_malzeme: "45 ml votka, 45 ml soğutulmuş köpüren şarap, 7 ml ananas suyu, Ananas dilimi", kokteyl_tarif: "Malzemeleri karıştırıcı bardağında buzla birlikte karıştırın, yavaşça soğutulmuş kokteyl bardağına dökün. Ananas dilimi ile bardağın kenarını süsleyebilirsiniz.")
        
        
        let vo4 = VodkaliKokteyller(kokteyl_id: 4, kokteyl_ad: "SALTYDOG", kokteyl_resim: "saltydog", kokteyl_malzeme: "60 ml votka, 120-180 ml taze sıkılmış greyfurt suyu, Limon dilimi, Tuz", kokteyl_tarif: "Soğutulmuş highball bardağının kenarını limon dilimiyle ovun ve tuzla kenarını ovalayın. Bardağı buzla doldurun, votka ve greyfurt suyunu dökün ve karıştırın. İçeceğin üzerine limon dilimi sıkın ve içine bırakın.")
        
    
        let vo5 = VodkaliKokteyller(kokteyl_id: 5, kokteyl_ad: "SCREWDRIVER", kokteyl_resim: "screwdriver", kokteyl_malzeme: "60ml votka, 120-180 ml taze portakal suyu, portakal dilimi", kokteyl_tarif: "​Portakal suyu ve votkayı buz dolu highball bardağa doldurun ve karıştırın. Portakal dilimi ile süsleyin.​")
        
        
        let vo6 = VodkaliKokteyller(kokteyl_id: 6, kokteyl_ad: "SLOW DRY", kokteyl_resim: "slowdry", kokteyl_malzeme: "50 ml votka, 50 ml Hindistan cevizi suyu, 20 ml Hindistan cevizi likörü, 10 ml süt reçeli", kokteyl_tarif: "Kokteyl karıştırıcısına birkaç buz küpü ile birlikte reçetedeki ölçülere göre tüm malzemeyi koyun ve 15 saniye çalkaladıktan sonra kokteyl süzgeci ile bardağa süzün. Garniş ile süsleyin.​")
        
        
        let vo7 = VodkaliKokteyller(kokteyl_id: 7, kokteyl_ad: "WHITE RUSSIAN", kokteyl_resim: "whiterussian", kokteyl_malzeme: "60 ml votka, 30 ml kahve likörü, 30 ml krema", kokteyl_tarif: "Votka ve kahve likörünü buz dolu old-fashioned bardağa servis edin ve karıştırın. Üzerine kremayı yayın.")
        
        
        vodkaListesi.append(vo1)
        vodkaListesi.append(vo2)
        vodkaListesi.append(vo3)
        vodkaListesi.append(vo4)
        vodkaListesi.append(vo5)
        vodkaListesi.append(vo6)
        vodkaListesi.append(vo7)


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! DetayVC
        
        gidilecekVC.detay1 = vodkaListesi[indeks!]
    }
    

}

extension VodkaliVC : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vodkaListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let liste = vodkaListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "vodkaHucre", for: indexPath) as! VodkaTableViewCell
        
        cell.label.text = liste.kokteyl_ad
        cell.resim.image = UIImage(named: liste.kokteyl_resim!)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen : \(indexPath.row)")
        self.performSegue(withIdentifier: "vodkaTodetay", sender: indexPath.row)

    }
}
