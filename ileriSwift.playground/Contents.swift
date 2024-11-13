import UIKit

func kisiTanima1(ad:String){
    if ad == "Ahmet"{
        print("Merhaba Ahmet")
    }else{
        print("Taninmayan Kisi")
    }
}
kisiTanima1(ad: "Ahmetx")

func kisiTanima2(ad:String){
    guard ad == "Ahmet" else{
        print("Taninmayan Kisi")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanima2(ad: "Ahmetx")

// Hata ayiklama
// 1. Compile Error: Derleme hatalari

//let x = 10
//x = 40 //Cannot assign to value: 'x' is a 'let' constant

// 2.Runtime Error: Exception : Calisma sirasinda olusan hatalar
enum Hatalar : Error{
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int,sayi2:Int) throws -> Int{
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do{
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayi sifira bolunemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 5) // Eger hata olursa sonuc nil olur

if let temp = sonuc1{
    print(temp)
}else{
    print("Sayi sifira bolunmez")
}
