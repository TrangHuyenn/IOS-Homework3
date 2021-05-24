//
//  main.swift
//  Homework3
//
//  Created by Trang Huyền on 5/23/21.
//

import Foundation

//MARK: BAI 1
func dayOfMonth(month: Int, year: Int) -> String {
    if month == 2 && (year % 100 == 0 || (year % 4 == 0 && year % 100 != 0)){
        return "Thang \(month) co 29 ngay"
    }
    else if month == 2{
        return  "Thang \(month) co 28 ngay"
    }
    else if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 {
        return  "Thang \(month) co 31 ngay"
    }
    else if month == 4 || month == 6 || month == 9 || month == 11 {
        return  "Thang \(month) co 30 ngay"
    }
    return "Input ko hop le"
}

print(dayOfMonth(month: 2, year: 2021))

//MARK: BAI 2


func sumDigits(num: Int) -> String {
    if num < 0 {
        return "So nhap vao ko hop le"
    }
    
    var sum = 0
    var number = num
    while number > 0 {
        sum += number % 10
        number = number / 10
        
    }
    return "So \(num) co tong cac chu so la \(sum)"
}

print(sumDigits(num: 11))

//MARK: Bai 3

func checkString(str: String) -> String {
    if str.count > 10 {
        var str_cp = str
        str_cp = str.prefix(10) + "..."
        return str_cp
    }
    return str
}

print(checkString(str: "Hom nay troi nong qua"))

//MARK: BAI 4
func minMaxofArray(arr : [Int]) -> (min: Int, max: Int) {
    return (arr.min() ?? 0, arr.max() ?? 0)
}
print(minMaxofArray(arr: [-1, 2, -11, 4, 5, 6]))

//MARK: BAI 5
func Max2nd(arr: [Int]) -> Int {
    let arr_sort = arr.sorted()                       // sap xep be den lon
    return arr_sort[arr.count - 2]
}

print(Max2nd(arr: [1, 2, 7, 8, 3, 4]))

// MARK: Bai 6

func reverseStr(str: String) -> String {
    return String(str.reversed())
}

print(reverseStr(str: "1234"))
// MARK: BAI 7
func drawTriange(h: Int) {
    for i in 1...h {
        for k in 1...2*h-1 {
            if k >= (2*h-2*i) && k < 2*h - 1 {
                print("* ", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
        }
        print()
        print()
        
    }
}
print(drawTriange(h: 3))

//MARK: BAI 8 Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần (không sử dụng hàm có sẵn).

// tăng dần
func sortASC(arr: [Int]) -> [Int] {
    var arr_sort = arr
    var tmp = 0
    for i in 0...arr.count - 1 {
        for k in 0...i {
            if arr_sort[i] < arr_sort[k]{
                tmp = arr_sort[i]
                arr_sort[i] = arr_sort[k]
                arr_sort[k] = tmp
            }
        }
    }
    return arr_sort
}

print(sortASC(arr: [4, 9, 2, 1]))

// giam dan
func sortDSC(arr: [Int]) -> [Int] {
    var arr_sort = arr
    var tmp = 0
    for i in 0...arr.count - 1 {
        for k in 0...i {
            if arr_sort[i] > arr_sort[k]{
                tmp = arr_sort[i]
                arr_sort[i] = arr_sort[k]
                arr_sort[k] = tmp
            }
        }
    }
    return arr_sort
}

print(sortDSC(arr: [4, 9, 2, 100]))

//MARK: BAI 9
func secondMacDigits(x: Int) -> String {
    if x < 10000 && x > 0 {
        var x_cp = x
        var digits = [Int]()
        while  x_cp > 0 {
            digits.append(x_cp%10)
            x_cp /= 10
        }
        let digit_sort = digits.sorted()
        return "So \(x) co chu so lon thu hai la: \(digit_sort[digit_sort.count - 2])"
    }
    return "So nhap vao ko ho le"
}

print(secondMacDigits(x: 1356))
//MARK: BAI 10
func drawX(h: Int) {
    if h < 0 || h % 2 == 0 {
        print("chiều cao h lớn hơn 0 và là số lẻ")
    }
    else {
        for i in 0...h-1{
            for k in 0...h {
                if k == i || k == h-1-i {
                    print("*", terminator: "")
                }else {
                    print(" ", terminator: "")
                }
            }
            print()
        }
    }
}
drawX(h: 7)

