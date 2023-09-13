//
//  ViskiliVC.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class ViskiliVC: UIViewController {
    
    @IBOutlet weak var viskiTableView: UITableView!
    
    var viskiliListesi = [ViskiliKokteyller]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viskiTableView.dataSource = self
        viskiTableView.delegate = self
        
        let v1 = ViskiliKokteyller(kokteyl_id: 1, kokteyl_ad: "WHISKY SOUR", kokteyl_resim: "whiskysour", kokteyl_malzeme: "50 ml bourbon whisky 25 ml limon suyu 2,5 ml şeker şurubu 3-4 bar kaşığı bitters", kokteyl_tarif: "Tüm malzemeleri içinde buz olan shaker'a ekleyip, iyice karıştırdıktan sonra, tumbler bardakta servis edilir. Dilerseniz kokteylinizi limon dilimi ve şeker kirazı ile de süsleyebilirsiniz.")
        
        let v2 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "BLUE BLAZER", kokteyl_resim: "blueblazer", kokteyl_malzeme: "50 ml bourbon, 5 ml kaynar su, 1 bar kaşığı pudra şekeri, Limon kabuğu", kokteyl_tarif: "Viskiyi küçük bir tencerede ısıtın ve kapaklı içki maşrapasına dökün. Kaynar suyu diğer kapaklı içki maşrapasının içine koyun. Viskiyi yakın ve alevler içindeyken iki sıvıyı dört veya beş kez kapaklı içki maşrapalar arasında ileri geri dökün. Bu ilk başta zordur ve bu büyülü eylemi konukların önünde gerçekleştirmeden önce pratik yapmanız gerekir. Daha uzun bir alev akışı yapmak istiyorsanız, hüner, sıvıyı ikinci, sabit, kapaklı içki maşrapaya dökerken dökme kolunu yumuşak, yukarı doğru bir hareketle hareket ettirmektir. Şekerle tatlandırın. Bir dilim limonla süsleyin.")
        
        
        let v3 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "ALGONQUİN", kokteyl_resim: "algonquin", kokteyl_malzeme: "60ml blend viski, 15ml sek vermut, 30ml ananas suyu", kokteyl_tarif: "Malzemeleri karıştırıcı bardağın içinde buz ile birlikte karıştırın. Soğutulmuş kokteyl bardağına süzgeçten geçirerek servis edin.")
        
        
        
        let v4 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "BOBBY BURN'S", kokteyl_resim: "bobbyburns", kokteyl_malzeme: "45 ml scotch, 45 ml tatlı vermut, 7 ml bitkisel likör, Limon kabuğu", kokteyl_tarif: "Malzemeleri shaker ile çalkalayın. Soğutulmuş kokteyl bardağına servis edin. Limon kabuğunu bardağın kenarından kokteylin içine doğru bırakın.")
        
        
        
        let v5 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "CHRİSTMAS SOUR", kokteyl_resim: "christmassour", kokteyl_malzeme: "50 ml viski, 30 ml incir reçeli, 40 ml yeşil elma suyu, 40 ml lime suyu", kokteyl_tarif: "Kokteyl karıştırıcısına birkaç buz küpü ile birlikte reçetedeki ölçülere göre tüm malzemeyi koyun ve 15 saniye çalkaladıktan sonra kokteyl süzgeci ile bardağa süzün. Garniş ile süsleyin.")
        
        
        
        let v6 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "DEBONAİR", kokteyl_resim: "debonair", kokteyl_malzeme: "60 ml single-malt scotch, 30 ml zencefil likörü, Limon kabuğu", kokteyl_tarif: "Malzemeleri limon dilimi hariç buz küpleri ile birlikte shakerda çalkalayın. Soğutulmuş kokteyl bardağına servis edin. Limon kabuğunu çevirin ve kokteylin üzerine bırakın.")
        
        
        
        let v7 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "DERBY", kokteyl_resim: "derby", kokteyl_malzeme: "45 ml blended viski, 45 ml tatlı vermut, 45 ml portakal likörü, 45 ml taze limon suyu, Nane filizi", kokteyl_tarif: "Tüm sıvıları büyük buzlarla dolu shakerda çalkalayın. Buz dolu old-fashioned bardağa servis edin. Nane filizi ile süsleyebilirsiniz.")
        
        
        
        let v8 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "GİNGER BELL", kokteyl_resim: "gingerbell", kokteyl_malzeme: "40 ml viski, 15 ml portakal likörü, 20 ml taze sıkılmış limon suyu, 10 ml taze zencefil suyu, 10 ml şeker şurubu*", kokteyl_tarif: "Bütün malzemeleri çalkalama kabına alıp bol buz ile birlikte 15 saniye boyunca çalkalayın. Sonrasında bir süzgeç yardımı ile temiz buz dolu bir bardağa boşaltın. Üzerini yenilebilir çiçekler ile süsleyebilirsiniz. *Şeker şurubu: Eşit miktarda şeker ve suyu orta ateşte şeker iyice eriyinceye kadar karıştırın ve soğuduktan sonra şişeleyin.")
        
        
        
        let v9 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "HORSES NECK", kokteyl_resim: "horsesneck", kokteyl_malzeme: "2  damla bitters, Limon kabuğu  ,60 ml bourbon, 30 ml  benedictine likörü, 90-150 ml soğuk zencefil  gazozu", kokteyl_tarif: "Soğutulmuş highball bardağına  bitters sürün. Bardağı buz ile doldurun ve içine limon kabuğunu sarmal şekilde yerleştirin. Bourbon ve likörü dökün. Zencefil gazozunu da ilave ederek hafifçe karıştırın.")
        
        
        
        let v10 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "HOT TODY", kokteyl_resim: "hottoddy", kokteyl_malzeme: "6 çorba kaşığı bal, 240ml bourbon veya koyu rom, 720 ml sıcak su, 4 limon dilimi", kokteyl_tarif: "Öncelikle 1,5 kaşık balı bardaklara dökün sonrasında viski veya koyu rom ve sıcak suyu üzerine ekleyin.  Bal tamamen eriyene kadar karıştırın. Limon dilimi ile bardağı süsleyin. Kokteyliniz 4 kişiilik servise hazır.")
        
        
        
        let v11 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "QUEEN PINAPPLE", kokteyl_resim: "queenpineapple", kokteyl_malzeme: "60 ml scotch viski, 20 ml portakal likörü, 80 ml taze ananas suyu, Ananas dilimi.", kokteyl_tarif: "Bütün malzemeleri buz dolu bir kokteyl shaker*'a ekleyin ve 7-10 saniye çalkalayın, bir süzgeç (süzgeç işlevi görebilecek bir materyal) yardımı ile süzün. *Shaker'ınız yok ise; kalın camlı orta boy bir kavanoz kullanabilirsiniz.")
        
        
        
        
        let v12 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "SANTA", kokteyl_resim: "santa", kokteyl_malzeme: "    60 ml viski, 15 ml taze portakal suyu, 15 ml taze nar suyu, 15 ml şeker şurubu*, 1 adet çubuk tarçın, 2 adet karanfil, 1 adet yumurta akı", kokteyl_tarif: "Bütün malzemeleri çalkalama kabına alıp bol buz ile 15 saniye boyunca sertçe çalkalayın. Daha sonrasında bir süzgeç yardımıyla önceden buz doldurduğunuz bardağa boşaltın. Üzerini çubuk tarçın ve karanfil ile süsleyip servis edebilirsiniz. * Şeker Şurubu: Eşit miktarda su ve şekeri orta ateşte şeker iyice eriyene kadar karıştırın ve soğuduktan sonra şişeleyin.")
        
        
        
        let v13 = ViskiliKokteyller(kokteyl_id: 2, kokteyl_ad: "THE LİPS", kokteyl_resim: "thelips", kokteyl_malzeme: "50 ml viski, 30 ml Antep fıstığı, 30 ml limon suyu, 20 ml portakal suyu, 20 ml tatlı beyaz şarap", kokteyl_tarif: "Kokteyl karıştırıcısına birkaç buz küpü ile birlikte reçetedeki ölçülere göre tüm malzemeyi koyun ve 15 saniye çalkaladıktan sonra kokteyl süzgeci ile bardağa süzün. Garniş ile süsleyin.")
        
        viskiliListesi.append(v1)
        viskiliListesi.append(v2)
        viskiliListesi.append(v3)
        viskiliListesi.append(v4)
        viskiliListesi.append(v5)
        viskiliListesi.append(v6)
        viskiliListesi.append(v7)
        viskiliListesi.append(v8)
        viskiliListesi.append(v9)
        viskiliListesi.append(v10)
        viskiliListesi.append(v11)
        viskiliListesi.append(v12)
        viskiliListesi.append(v13)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! DetayVC
        
        gidilecekVC.detay = viskiliListesi[indeks!]
        
        
    }
    
}
    
    extension ViskiliVC : UITableViewDelegate,UITableViewDataSource {
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return viskiliListesi.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let gelenListe = viskiliListesi[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "viskiHucre", for: indexPath) as! ViskiTableViewCell
            
            cell.label.text = gelenListe.kokteyl_ad
            cell.resim.image = UIImage(named: gelenListe.kokteyl_resim!)
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            self.performSegue(withIdentifier: "viskiTodetay", sender: indexPath.row)
            
        }
        
        
    }

