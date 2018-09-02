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

func squaredSums3(numbers: Array<Int?>) -> Int {
    var result: Int = 0;
    for number in numbers {
        let possibleInt:Int? = number as Int?;
        if let tempInt = possibleInt {
            if(tempInt != 0 && tempInt % 2 == 0) {
                result += (tempInt * tempInt);
            }
        }
    }
    return result;
}



//var integers1 = [1, 6, 0, 5, nil, 6];
//var value1 = squaredSums3(numbers:integers1);


//var integers =  [1,3,0,5];
//var value = squaredSums2(numbers:integers);


//var integers2 =  [1,2,0,4];
//var value2 = squaredSums(numbers:integers2);
