import UIKit

// Array kullanimi

var numaralar = [1, 2, 3, 4, 5]

var meyveler = [String]()

// Veri ekleme

meyveler.append("Elma") // 0.
meyveler.append("Armut") // 1.
meyveler.append("Karpuz")
meyveler.append("Kavun")
meyveler.append("Kiraz")

print(meyveler)

// Guncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

// Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

// Veri okuma
print(meyveler[2])
let m = meyveler[3]
print(m)

print("Boyut \(meyveler.count)")
print("Bos kontrol \(meyveler.isEmpty)")

for meyve in meyveler {
    print(meyve)
}

for(indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

class Ogrenciler{
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no: Int?, ad: String?, sinif: String?) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 101, ad: "Omer Ahmet", sinif: "9C")
var o2 = Ogrenciler(no: 201, ad: "Ali", sinif: "11B")
var o3 = Ogrenciler(no: 303, ad: "Omer Faruk", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}


// Filtreleme
var f1 = ogrencilerListesi.filter({$0.no! > 100 && $0.no! < 300})
print("Filtreleme 1")
for o in f1{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({$0.ad!.contains("a")})
print("Filtreleme 2")
for o in f2{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

// Sirlama - Sorting

var s1 = ogrencilerListesi.sorted(by: {$0.no! > $1.no!})
print("Sayisal buyukten kucuge")
for o in s1{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var s2 = ogrencilerListesi.sorted(by: {$0.ad! > $1.ad!})
print("Siralama 2")
for o in s2{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}
