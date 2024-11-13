import UIKit

class Araba{
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(renk:String,hiz:Int,calisiyorMu:Bool){
        self.renk = renk //self : bulundugu sinifi temsil eder.
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu //bu isleme shadowing denir
    }
    func calistir(){
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    
    func bilgiAl(){
        print("-------------------------------")
        print("Renk              : \(renk!)")
        print("Hiz               : \(hiz!)")
        print("Calisiyor mu?     : \(calisiyorMu!)")
        print("-------------------------------")
    }
}

// nesne olusturma
// var bmw = Araba()

//deger atama
/*
bmw.renk = "Kirmizi"
bmw.hiz = 100
bmw.calisiyorMu = true
bmw.bilgiAl()
bmw.hizlan(kacKm: 10)
bmw.bilgiAl()
bmw.yavasla(kacKm: 30)
bmw.bilgiAl()
 */

// nesne olusturma ve deger atama

var bmw = Araba(renk: "Kirmizi", hiz: 100, calisiyorMu: true)
bmw.bilgiAl()
bmw.hizlan(kacKm: 10)
bmw.bilgiAl()
bmw.yavasla(kacKm: 30)
bmw.bilgiAl()


// static degiskenler ve metodlar
print("--------STATIC METOTLAR--------")
class ASinifi{
    var x = 10
    func metod(){
        print("Metod calisti")
    }
}

let a = ASinifi()

print(a.x)

a.metod()


print(ASinifi().x) // sanal nesne - virtual object - isimsiz nesne

print("--------ENUMERATION--------")

enum KonserveBoyut{
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut{
    case .kucuk : print("Fiyat : \(adet * 13)")
    case .orta : print("Fiyat : \(adet * 24)")
    case .buyuk : print("Fiyat : \(adet * 45)")
    }
}

ucretHesapla(boyut: .orta, adet: 100)


print("--------COMPOSITION--------")

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id: Int?, film_ad: String?, film_yil: Int?, kategori: Kategoriler?, yonetmen: Yonetmenler?) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Drama")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christoper Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1)
let f2 = Filmler(film_id: 2, film_ad: "Inception", film_yil: 2009, kategori: k1, yonetmen: y2)

print("-------FILM BILGILERI-------")
print("Film id          : \(f1.film_id!)")
print("Film ad          : \(f1.film_ad!)")
print("Film Yil         : \(f1.film_yil!)")
print("Film Kategori    : \(f1.kategori!.kategori_ad!)")
print("Film Yonetmen    : \(f1.yonetmen!.yonetmen_ad!)")

print("-------FILM BILGILERI------")

print("Film id          : \(f2.film_id!)")
print("Film ad          : \(f2.film_ad!)")
print("Film Yil         : \(f2.film_yil!)")
print("Film Kategori    : \(f2.kategori!.kategori_ad!)")
print("Film Yonetmen    : \(f2.yonetmen!.yonetmen_ad!)")


