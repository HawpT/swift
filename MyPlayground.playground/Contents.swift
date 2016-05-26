//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func linearSearch(array: [Int], key: Int) -> Bool {
    for item in array {
        if item == key {
            return true
        }
    }
    return false
}

func refreshWebPage() -> (code: Int, message: String) {
    return(200, "Success")
}

let response = refreshWebPage()
print(response.code)
print(response.message)


