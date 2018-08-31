//: Playground - noun: a place where people can play

import UIKit

func squaredSums(numbers: [Int])  -> Int {
    var result = 0;
    for number in numbers {
        result += (number * number);
    }
    return result;
}

func squaredSums2(numbers: [Int]) -> Int {
    var result = 0;
    for number in numbers {
        if(number != 0 && (number % 2 == 0)) {
            result += (number * number);
        }
    }
    return result;
}


var integers =  [1,3,0,5];
var value = squaredSums2(numbers:integers);


//var integers2 =  [1,2,0,4];
//var value1 = squaredSums2(numbers:integers2);
