import UIKit

// Set

var meyveler = Set<String>()

// veri ekleme
meyveler.insert("Karpuz")
meyveler.insert("Elma")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elmasi")
print(meyveler)

for meyve in meyveler{
    print("Sonuc: \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated(){
    print("\(indeks + 1). -> \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Bos mu : \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()
print(meyveler)

// Dictionary - HashMap - Map
var iller = [Int:String]()

iller[16] = "Bursa"
iller[34] = "Istanbul"
iller[06] = "Ankara"
iller[52] = "Ordu"

print(iller[16]!)

for (key,value) in iller{
    print("\(key) -> \(value)")
}
