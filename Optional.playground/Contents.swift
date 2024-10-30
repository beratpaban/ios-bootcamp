import UIKit

// Tanimlama

var mesaj = "Merhaba"

// null, nill

var str:String? = nil

str = mesaj

if str != nil{
    print(str!) //unwrap
}
else{
    print("Nil")
}

// optional binding
if let temp = str{
    print(temp)
}else{
    print("str is nil")
}

if var temp = str{
    print(temp)
    temp = "Nasilsin"
    print(temp)
}else{
    print("str is nil")
}
