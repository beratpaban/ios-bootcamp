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


