import UIKit

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi: Int?) {
        self.pencereSayisi = pencereSayisi
    }
    
}

class Saray: Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi: Int?,pencereSayisi: Int?) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa: Ev{
    var garajVarMi:Bool?
    
    init(garajVarMi: Bool?,pencereSayisi:Int?) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 100)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

print(topkapiSarayi.pencereSayisi!)
print(topkapiSarayi.kuleSayisi!)

// Override

class Hayvan{
    func sesCikar(){
        print("Sesim yok")
    }
}

class Memeli:Hayvan{
    
}

class Kedi:Memeli{
    override func sesCikar() {
        print("Miyav Miyav")
    }
}

class Kopek:Memeli{
    override func sesCikar() {
        print("Hav Hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() //Kalitim yok, kendi fonks calistirdi
memeli.sesCikar() //Kalitim var, ust sinif fonks calistirdi
kedi.sesCikar() //Kalitim var, kendi fonks calistirdi
kopek.sesCikar() //Kalitim var, kendi fonks calistirdi

// Tip Donusumu

// Upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

// Downcasting
var saray = Ev(pencereSayisi: 10) as? Saray

if ev is Ev{
    print("Nesne ev sinifindadir")
}else{
    print("Nesne ev sinifindan degildir")
}


// Protocol

protocol MyProtocol{
    var degisken:Int{get set}
    
    func fonksiyon1()
    func fonksiyon2() -> String
}

class ClassA:MyProtocol
{
    var degisken:Int = 10
    
    func fonksiyon1()
    {
        print("Metod1 fonksiyon")
    }
    
    func fonksiyon2() -> String
    {
        return "Metod 2 calisti"
    }
}

var a = ClassA()

print(a.degisken)

a.fonksiyon1()
print(a.fonksiyon2())

// Extension

extension Int{
    func carp(sayi:Int) -> Int{
        return self * sayi
    }
}

let x = 10.carp(sayi: 2)
print(x)

// Closure

let ifade = {
    print("Merhaba")
}

ifade()
