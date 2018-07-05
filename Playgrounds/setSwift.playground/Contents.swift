//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var primes: Set = [2,3,5,7,9]
var otherArray = [11,13,17,19,2,2]

primes.union(otherArray)

var num = 1212
var finish = true

let newString = String(describing: num)
let array = newString.flatMap{Int(String($0))}
if (primes.union(array)).count == 9 {
    print("coplete")
} else {
    num = num * 2
}

print(array)
var count = 0
while finish != true {
    count += 1
    
}
