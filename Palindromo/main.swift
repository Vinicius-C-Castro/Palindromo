//
//  main.swift
//  Palindromo
//
//  Created by Vinicius Cardoso de Castro on 10/09/21.
//

import Foundation

var palavra: String
print("Verificar Palíndromo")
palavra = readLine()!

print("A palavra", isPalindrome(inputString: palavra) == true ? "" : "não", "é palíndromo!")

func isPalindrome(inputString: String) -> Bool {
    let stringLength = inputString.count
    var position = 0
    
    while position < stringLength / 2 {
        let startIndex = inputString.index(inputString.startIndex, offsetBy: position)
        let endIndex = inputString.index(inputString.endIndex, offsetBy: -position - 1)
        
        if inputString[startIndex] == inputString[endIndex] {
            position += 1
        } else {
            return false
        }
    }
    
    return true
}

