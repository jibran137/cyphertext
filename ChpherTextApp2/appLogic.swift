//
//  appLogic.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 06/10/2022.
//

import Foundation

func arrayMaker(tempS: String)->[Character]{
    var tempS = tempS
    tempS = tempS.lowercased()
    return Array(tempS)
}

func makeCypherAlphabet(tempC: [Character]) -> [Character]{
    var tempC = tempC
    
    var spaceArray: [Int] = []
    for c in 0 ..< tempC.count{
        if tempC[c] == " "{
            spaceArray.append(c)
        }
    }
    let spaceArrayReversed : [Int] = Array(spaceArray.reversed())
    for r in spaceArrayReversed{
        tempC.remove(at: r)
    }
    //print(tempC)
    var cypherAlphabet: [Character] = []
    for i in 0 ..< tempC.count{
        if !cypherAlphabet.contains(tempC[i]) {
            cypherAlphabet.append(tempC[i])
        }
    }
    let lastLetter = cypherAlphabet[cypherAlphabet.count-1]
    var n: Int = 0
    while lastLetter != alphabet[n]{
        n += 1
    }
    n += 1
    
    let stopper = n-1
    while n != stopper{
        if !cypherAlphabet.contains(alphabet[n]) {
            cypherAlphabet.append(alphabet[n])
        }
        n += 1
        if n==26{
            n %= 26
        }
    }
    return cypherAlphabet
}

func encoder(message:String, key:String) -> String{
    
    var message = arrayMaker(tempS: message)
    let cypherAlphabet = makeCypherAlphabet(tempC: arrayMaker(tempS: key))
    
    for f in 0 ..< message.count{
        for g in 0 ..< alphabet.count{
            if message[f] == alphabet[g]{
                message[f] = cypherAlphabet[g]
                break
            }
        }
    }
    return String(message)
}

func decoder(message:String, key:String) -> String{
    var message = arrayMaker(tempS: message)
    let cypherAlphabet = makeCypherAlphabet(tempC: arrayMaker(tempS: key))
    
    for f in 0 ..< message.count{
        for g in 0 ..< cypherAlphabet.count{
            if message[f] == cypherAlphabet[g]{
                message[f] = alphabet[g]
                break
            }
        }
    }
    return String(message)
}

func checkEmpty(message: String, key:String) -> Bool{
    var keyC: Bool = true
    var messageC: Bool = true
    
    for character in key {
        if !character.isWhitespace {
            keyC = false
            break
        } else {
            keyC = true
        }
      }
    
    for character in message {
        if !character.isWhitespace {
            messageC = false
            break
        } else {
            messageC = true
        }
      }
    
    if keyC || messageC {
        return true
    } else {
        return false
    }
}

func keyArrayMaker (key:String) -> [Character] {
    var key = arrayMaker(tempS: key)
    
    var spaceArray: [Int] = []
    for c in 0 ..< key.count{
        if key[c] == " "{
            spaceArray.append(c)
        }
    }
    let spaceArrayReversed : [Int] = Array(spaceArray.reversed())
    for r in spaceArrayReversed{
        key.remove(at: r)
    }
    //print(tempC)
    var cypherAlphabet: [Character] = []
    for i in 0 ..< key.count{
        if !cypherAlphabet.contains(key[i]) {
            cypherAlphabet.append(key[i])
        }
    }
    return cypherAlphabet
}

func keyValid(key:String)->Bool{
    let key = keyArrayMaker(key: key)
    
    for i in 0..<key.count{
        for j in 0..<27{
            if j != 26 {
                if key[i] != alphabet[j]{
                    continue
                } else if key[i] == alphabet[j]{
                    break
                }
            } else {
                return false
            }
        }
    }
    return true
}

var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
