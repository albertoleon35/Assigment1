//: Playground - noun: a place where people can play

import UIKit

func squaredSums(numbers: [Int])  -> Int {
    var result = 0;
    for number in numbers {
        result += (number * number);
    }
    return result;
}

var integers =  [1,2,0,4];
var value = squaredSums(numbers:integers)
