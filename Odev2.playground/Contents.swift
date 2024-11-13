import UIKit

class Odev2{
    
    func kmToMl(km:Double)->Double{
        let mile = km * 0.621
        return mile
    }
    
    func alan(genislik:Double,yukseklik:Double)->Double{
        let alan = genislik * yukseklik
        return alan
    }
    
    func faktoriyel(sayi:Int)->Int{
        if sayi == 0{
            return 1
        }
        return sayi * faktoriyel(sayi: sayi-1)
    }
    
    func eHarfSayisi(yazi:String)->Int{
        let kucukYazi = yazi.lowercased()
        let eHarfiAdet = kucukYazi.filter { $0 == "e" }.count
        return eHarfiAdet
    }
    
    func AciHesapla(kenarSayisi:Int) ->Int{
        let icAci = ((kenarSayisi - 2)*180)/kenarSayisi
        return icAci
    }
    
    func maasHesapla(gunSayisi: Int) -> Int {
        let gunlukCalismaSaati = 8
        let normalSaatUcreti = 40
        let mesaiSaatUcreti = 80
        let mesaiBaslangicSaati = 150
        
        let toplamCalismaSaati = gunSayisi * gunlukCalismaSaati
        
        var maas = 0
        
        if toplamCalismaSaati <= mesaiBaslangicSaati {
            maas = toplamCalismaSaati * normalSaatUcreti
        } else {
            let normalSaat = mesaiBaslangicSaati
            let mesaiSaati = toplamCalismaSaati - mesaiBaslangicSaati
            
            let normalMaas = normalSaat * normalSaatUcreti
            let mesaiMaas = mesaiSaati * mesaiSaatUcreti
            
            maas = normalMaas + mesaiMaas
        }
        
        return maas
    }
    
    func parkUcreti(saat:Int)->Int{
        let ilkSaatUcreti = 50
            let sonrakiSaatUcreti = 10

            if saat <= 1 {
                return ilkSaatUcreti
            } else {
                let ekSaatSayisi = saat - 1
                let ucret = ilkSaatUcreti + (ekSaatSayisi * sonrakiSaatUcreti)
                return ucret
            }
    }
}

let odev = Odev2()

let kilometre = 10.0
let mil = odev.kmToMl(km: kilometre)
print("\(kilometre) km = \(mil) mil")

let genislik = 5.0
let yukseklik = 8.0
let dikdortgenAlani = odev.alan(genislik: genislik, yukseklik: yukseklik)
print("Dikdörtgenin alanı: \(dikdortgenAlani)")

let sayi = 5
let faktoriyelSonucu = odev.faktoriyel(sayi: sayi)
print("\(sayi)! = \(faktoriyelSonucu)")

let metin = "Merhaba Dünya, nasılsınız?"
let eHarfiAdedi = odev.eHarfSayisi(yazi: metin)
print("Metindeki 'e' harfi sayısı: \(eHarfiAdedi)")

let icAci = odev.AciHesapla(kenarSayisi: 4)
print("Dörtgenin bir iç acisi: \(icAci)")

let calisilanGunSayisi = 20
let hesaplananMaas = odev.maasHesapla(gunSayisi: calisilanGunSayisi)
print("Toplam maaş: \(hesaplananMaas) TL")

let otoparkUcreti = odev.parkUcreti(saat: 2)
print("Otopark ücreti: \(otoparkUcreti) TL")
