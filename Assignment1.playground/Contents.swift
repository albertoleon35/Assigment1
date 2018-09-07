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

func squaredSums4(numbers: Array<Int?>) -> Int? {
    var result: Int? = 0;
    for number in numbers {
        let possibleInt:Int? = number as Int?;
        if let tempInt = possibleInt {
            if(tempInt != 0 && tempInt % 2 == 0) {
                result! += (tempInt * tempInt);
            }
        }
    }
    return result;
}

func squaredSums5(numbers: Array<Int?>) -> Int {
    let result: Int = numbers.compactMap { $0 }.filter { $0 > 0 && ($0 % 2 == 0) }.reduce(0) {
        (accumulation: Int, nextValue: Int) -> Int in
        return accumulation + (nextValue * nextValue)
    };
    return result;
}

func squaredSums6<T: Collection>(numbers: T) -> Int {
    var result : Int = 0;
    
    switch numbers {

    case is Array<Int> :
        let arrayOfInts = numbers as! Array<Int>;
        result = arrayOfInts.compactMap { $0 }.filter{ $0 > 0 && ($0 % 2 == 0) }.reduce(0) {
            (accumulation: Int, nextValue: Int) -> Int in
            return accumulation + (nextValue * nextValue)
        };
        return result;

    case is Set<Int> :
        let setOfInts = numbers as! Set<Int>;
        result = setOfInts.compactMap{ $0 }.filter{ $0 > 0 && ($0 % 2 == 0) }.reduce(0) {
            (accumulation: Int, nextValue: Int) -> Int in
            return accumulation + (nextValue * nextValue)
        };
        return result;
    case is Dictionary<Int, Int> :
        let dictionaryOfInts = numbers as! Dictionary<Int, Int>;
        result = dictionaryOfInts.compactMap { $0.value }.filter{ $0 > 0 && ($0 % 2 == 0)}.reduce(0) {
            (accumulation: Int, nextValue: Int) -> Int in
            return accumulation + (nextValue * nextValue)
        };
        return result;
    default:
        return result;
    }
}

//Question 7
struct Student {
    var name: String;
    var redid: Int;
    var units: Int;
    var gpa: Double;
    
    func priority() -> Double {
        return Double(self.units) * self.gpa;
    }
}

extension Student: Equatable {}

func ==(lhs: Student, rhs: Student) -> Bool {
    let areEqual = lhs.redid == rhs.redid;
    return areEqual
}



//Question 8
class PriorityQueue  {
    var students: Array<Student>;
    
    init(students: Array<Student>) {
        self.students = students;
    }
    
    func addStudent(student: Student) {
        self.students.append(student);
    }
    
    func first() -> Student? {
        return highestPriorityStudent();
    }
    
    func removeFirst() -> Student? {
        if let student = highestPriorityStudent(), let index = self.students.index(of: student) {
            self.students.remove(at: index);
            return student;
        }
        return nil;
    }

    private func highestPriorityStudent() -> Student? {
        return self.students.sorted(by: {$0.priority() > $1.priority()}).first;
    }
}

//var student = Student(name:"Jose", redid:814181960, units: 70, gpa: 3.5);
//var student2 = Student(name:"Alberto", redid:814181961, units: 25, gpa: 4.0);
//var student3 = Student(name:"Leon", redid:814181962, units: 50, gpa: 2.6);
//let temp = student.priority();
//
//var students : Array<Student> = [student];
//var priorityQueue = PriorityQueue(students: students);
//priorityQueue.addStudent(student: student2);
//priorityQueue.addStudent(student: student3);
//print(priorityQueue.students.count);
//let temp1 = priorityQueue.first();
//print(temp1?.name);
//print(priorityQueue.students.count);
//print(priorityQueue.students);
//let temp2 = priorityQueue.removeFirst();
//print(temp2?.name);
//print(priorityQueue.students);



//var integers1 = [1, 6, 4, 8, 10];
//var integers1: Set<Int> = [1,2,4,3,6]
//var integers1: Dictionary<Int, Int> = [1:1, 4:5, 3:6];
//var value1 = squaredSums6(numbers: integers1);
//print(value1);

//var integers1 = [1, nil, 0, 5, nil, 6, 4, 8, 10];
//var value1 = squaredSums5(numbers:integers1);
//print(value1)

//var integers1 = [1, nil, 0, 5, nil, 6];
//var value1 = squaredSums4(numbers:integers1);

//var integers1 = [1, 6, 0, 5, nil, 6];
//var value1 = squaredSums3(numbers:integers1);


//var integers =  [1,3,0,5];
//var value = squaredSums2(numbers:integers);


//var integers2 =  [1,2,0,4];
//var value2 = squaredSums(numbers:integers2);
