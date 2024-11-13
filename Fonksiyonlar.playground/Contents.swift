import UIKit

class Fonksiyonlar{
    
    //geri donus degeri olmayan void fonksiyon
    func selamla1(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    //geri donus degeri string olan fonksiyon (return)
    func selamla2() -> String{
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    //parametre
    func selamla3(isim:String){
        print(isim)
    }
    
    func topla(sayi1:Int,sayi2:Int){
        let toplam = sayi1 + sayi2
        print(toplam)
    }
    
    //overloading
    func carpma(sayi1:Int,sayi2:Int){
        let sonuc = sayi1 * sayi2
        print(sonuc)
    }
    
    func carpma(sayi1:Int,sayi2:Int,sayi3:Int){
        let sonuc = sayi1 * sayi2 * sayi3
        print(sonuc)
    }
}


let f = Fonksiyonlar()

f.selamla1()
let gelenSonuc = f.selamla2()

print("Gelen sonuc: \(gelenSonuc)")
f.selamla3(isim: "Berat")
f.topla(sayi1: 12, sayi2: 12)
f.carpma(sayi1: 12, sayi2: 2)
f.carpma(sayi1: 12, sayi2: 2, sayi3: 2)
