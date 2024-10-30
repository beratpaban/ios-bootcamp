import UIKit

// karsilastirma oparetorleri

var a = 40
var b = 50

var x = 90
var y = 80

print("a == b   : \(a == b)")
print("a != b   : \(a != b)")
print("a > b    : \(a > b)")
print("a >= b   : \(a >= b)")
print("a < b    : \(a < b)")
print("a <= b   : \(a <= b)")

print("a > b || x > y : \(a > b || x > y)")
print("a > b && x > y : \(a > b && x > y)")

var yas = 17
var isim = "Ahmet"

if yas >= 18{
    print("Resitsiniz")
}else{
    print("Resit Degilsiniz")
}

if isim == "Ahmet"{
    print("Merhaba Ahmet")
}else if isim == "Mehmet"{
    print("Merhaba Mehmet")
}else{
    print("Taninmayan Kisi")
}

var ka = "Admin"
var s = 123456
if ka == "Admin" && s == 123456{
    print("Hosgeldiniz")
}else{
    print("Hatali Giris")
}

var sonuc = 11

if sonuc == 9 || sonuc == 10{
    print("Sonuc 9 veya 10")
}
else{
    print("Sonuc 9 veya 10 degildir")
}

var gun = 3

switch gun {
    case 1: print("Pazartesi")
    case 2: print("Sali")
    case 3: print("Carsamba")
    case 4: print("Persembe")
    case 5: print("Cuma")
    case 6: print("Cumartesi")
    case 7: print("Pazar")
    default: print("Boyle bir gun yok")
}

//donguler
for x in 1...3{
    print("Dongu 1 : \(x)") //1 2 3
}

for a in stride(from:10,through: 20,by: 5){
    print("Dongu 2 : \(a)")
}

for a in stride(from:20,through: 5,by: -5){
    print("Dongu 3 : \(a)")
}

var sayac = 1

while sayac<4{
    print("Dongu 4 : \(sayac)")
    sayac = sayac + 1
    //sayac+=1
}

for i in 1...5{
    if i == 3{
        break
    }
    print("Dongu 5 : \(i)")
}
for i in 1...5{
    if i == 3{
        continue
    }
    print("Dongu 6 : \(i)")
}
