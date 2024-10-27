import UIKit

print("Hello World!")


var ogrenciAdi = "Ahmet"
var ogrenciYas = 18
var ogrenciBoy = 1.78
var ogrenciBasharf="A"
var ogrenciDevamEdiyorMu = true


print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)


var urun_id:Int = 3416
var urun_adi:String = "Macbook Pro"
var urun_adet:Int = 100
var urun_fiyat:Int = 3499
var urun_tedarikci:String = "Apple"

print("Urun Id          : \(urun_id)")
print("Urun Adi         : \(urun_adi)")
print("Urun Adet        : \(urun_adet)")
print("Urun Fiyat       : \(urun_fiyat) TL")
print("Urun Tedarikci   : \(urun_tedarikci)")

// Constant - Sabitler

var sayi = 10
print(sayi)
sayi = 20
print(sayi)

// numarayi sabit tanimladik
let numara = 100
print(100)
//tekrar degerini degistirmeye calisinca hata veriyor
//numara = 200
//print(numara)


//Tur donusumleri
//sayisaldan sayisala
var i = 42
var d = 56.78

var sonuc = Double(i) // 42.0
var sonuc2 = Int(d) // 56
print(sonuc)
print(sonuc2)

//sayisaldan metine

var sonuc3 = String(i)
var sonuc4 = String(d)
print(sonuc3)
print(sonuc4)

//metinden sayisala

var yazi="34"
//let sonuc5 = Int(yazi)
// print(sonuc5) // cikti: Optional(34) yazar

if let sonuc5 = Int(yazi){
    print(sonuc5) //34
}else{
    print("Donusum Hatasi")
}
