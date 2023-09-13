//
//  RomluVC.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class RomluVC: UIViewController {

    @IBOutlet weak var romTableView: UITableView!
    
    var romluListesi = [RomluKokteyller]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        romTableView.delegate = self
        romTableView.dataSource = self
        
        let rk1 = RomluKokteyller(kokteyl_id: 1, kokteyl_ad: "BLACKBERRY MOJITO", kokteyl_resim: "blackberrymojito", kokteyl_malzeme: "60 ml light rom, 60-90 ml soğutulmuş soda, 6 adet taze böğürtlen, 6-8 adet taze nane yaprağı, 2 çay kaşığı şeker, 1 adet orta boy lime", kokteyl_tarif: "Highball bardağının dibinde 6 adet taze böğürtleni, lime dilimlerini, şekeri ve nane yapraklarını şeker eriyene kadar birlikte karıştırın ve iyice ezin. Romu ekleyin. Bardağı buz ile doldurun sodayı bardağın ağzına kadar doldurun. Nane yaprağı, böğürtlenler ve lime ile bardağı süsleyin.")
        
        
        let rk2 = RomluKokteyller(kokteyl_id: 2, kokteyl_ad: "CAIPRINHA", kokteyl_resim: "caiprinha", kokteyl_malzeme: "50 ml beyaz rom, 1 adet doğranmış misket limonu, 3 bar kaşığı şeker", kokteyl_tarif: "Tumbler bardağında şekeri limon suyu ile eritip, ezdikten sonra, bardağı buz ile doldurun ve cachaça beyaz romu ekleyin.")
        
        
        let rk3 = RomluKokteyller(kokteyl_id: 3, kokteyl_ad: "COCO SHAKE", kokteyl_resim: "cocoshake", kokteyl_malzeme: "60 ml rom, 50 ml Hindistan cevizi suyu, 50 ml taze ananas suyu, Vişne, Kağıt şemsiye", kokteyl_tarif: "Tüm malzemeleri buz dolu bir kokteyl shaker*'a ekleyin ve 7-10 saniye kadar çalkalayın, bir süzgeç (süzgeç işlevi görebilecek bir materyal) yardımı ile süzün.")
        
        
        let rk4 = RomluKokteyller(kokteyl_id: 4, kokteyl_ad: "CUBA LIBRE", kokteyl_resim: "cubalibre", kokteyl_malzeme: "50 ml Rom, Kola", kokteyl_tarif: "İçi buz dolu highball bardağı içine, rom ekleyip, kalanı kola ile tamamladıktan sonra servis edilir. Dilerseniz öncesinde bardağın içine hafifçe ezilmiş limon dilimleri de ekleyebilirsiniz.")
        
        
        let rk5 = RomluKokteyller(kokteyl_id: 5, kokteyl_ad: "HEMINGWAY'S DAIQUIRI", kokteyl_resim: "hemingwaysdaiquiri", kokteyl_malzeme: "90ml beyaz rum, 15ml maraskino likörü /kiraz likörü, 45ml taze greyfurt suyu, 22 ml taze limon suyu, Limon dilimi", kokteyl_tarif: "Malzemeleri limon dilimi hariç buz küpleri ile birlikte tamamen pürüzsüz kıvama gelene kadar blenderdan geçirin. Soğutulmuş kokteyl bardağına servis edin. Limon dilimini karışıma sıkın ve karışımın içine bırakın.")
        
        
        let rk6 = RomluKokteyller(kokteyl_id: 6, kokteyl_ad: "HOT BUTTER DRUM", kokteyl_resim: "hotbutteredrum", kokteyl_malzeme: "1 çay kaşığı esmer şeker, 120 ml sıcak su, 60 ml koyu rom, 1 yemek kaşığı tereyağ", kokteyl_tarif: "Isıya dayanıklı bir bardağa sıcak suyu ve esmer şekeri ekleyerek eriyene kadar karıştırın, ardından romu ilave edin ve son olarak tereyağını koyun. Üzerine fındık serperek servis edebilirsiniz.")
        
        
        let rk7 = RomluKokteyller(kokteyl_id: 7, kokteyl_ad: "LONG ISLAND ICE TEA", kokteyl_resim: "longislandicetea", kokteyl_malzeme: "22 ml beyaz rom, 22 ml cin, 22 ml votka, 22 ml tekilla, 22 ml portakal likörü, 30 ml taze limon suyu, 22 ml taze portakal suyu, 60-90 ml soğutulmuş kola, Limon", kokteyl_tarif: "Tüm malzemeleri buzla dolu bir bardağa döküp nazikçe karıştırın. Bardağı ince bir limon dilimiyle süsleyin.")
        
        
        let rk8 = RomluKokteyller(kokteyl_id: 8, kokteyl_ad: "MAI TAI", kokteyl_resim: "maitai", kokteyl_malzeme: "45 ml siyah rom, 30 ml  dinlendirilmiş rom, 15 ml mavi narenciye likörü, 7 ml şurup, 15 ml badem aromalı şurup, 37 ml taze limon suyu, 15 ml taze portakal suyu, 1 portakal çiçeği, 1 portakal kabuğu", kokteyl_tarif: "Sıvı malzemeleri buzla birlikte çalkalayın. Buzla dolu collins bardağa servis edin. Portakal çiçeği ve portakal kabuğu ile süsleyin.")
        
        
        let rk9 = RomluKokteyller(kokteyl_id: 9, kokteyl_ad: "MOJITO", kokteyl_resim: "mojito", kokteyl_malzeme: "30 ml taze limon suyu, 1 yemek kaşığı şeker, 6-8 adet taze nane yaprağı, 60 ml light rom, 22 ml soğutulmuş soda, Taze nane filizi", kokteyl_tarif: "Highball bardağının dibinde limon suyunu, şekeri ve nane yapraklarını şeker eriyene kadar birlikte karıştırın. Romu ekleyin. Bardağı buz ile doldurun sodayı bardağın ağzına kadar doldurun. Nane yaprağı ile bardağı süsleyin.")
        
        
        let rk10 = RomluKokteyller(kokteyl_id: 10, kokteyl_ad: "PINA COLADA", kokteyl_resim: "pinacolada", kokteyl_malzeme: "60 ml beyaz rum, 180 ml ananas suyu, 60 ml hindistancevizi kreması, Ananas dilimi, Maraska kirazı", kokteyl_tarif: "Sıvı malzemeleri buzla çalkalayın. Buzla dolu şarap bardağı içerisine ekleyin. Bardağın üzerini ananas dilimi ve kiraz ile süsleyin.")
        
        
        let rk11 = RomluKokteyller(kokteyl_id: 11, kokteyl_ad: "SNOWBARRY", kokteyl_resim: "snowberry", kokteyl_malzeme: "25 ml baharatlı rom, 15 ml çilek aromalı likör (schnapps), 15 ml basit şurup, 15 ml limon suyu, 1 yemek kaşığı nar şurubu, 150 ml sıcak su, 1 adet çubuk tarçın", kokteyl_tarif: "Tüm malzemeleri büyük bir cam kupada birleştirin. Tarçın çubuğu ile süsleyin.")
        
        romluListesi.append(rk1)
        romluListesi.append(rk2)
        romluListesi.append(rk3)
        romluListesi.append(rk4)
        romluListesi.append(rk5)
        romluListesi.append(rk6)
        romluListesi.append(rk7)
        romluListesi.append(rk8)
        romluListesi.append(rk9)
        romluListesi.append(rk10)
        romluListesi.append(rk11)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! DetayVC
        
        gidilecekVC.detay4 = romluListesi[indeks!]
    }
    

}

extension RomluVC : UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return romluListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = romluListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "romHucre", for: indexPath) as! RomTableViewCell
        
        cell.label.text = gelenListe.kokteyl_ad
        cell.resim.image = UIImage(named: gelenListe.kokteyl_resim!)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen : \(indexPath.row)")
        self.performSegue(withIdentifier: "romTodetay", sender: indexPath.row)

    }
}
