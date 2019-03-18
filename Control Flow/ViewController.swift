//
//  ViewController.swift
//  Control Flow
//
//  Created by Valodya Galstyan on 3/14/19.
//  Copyright © 2019 Valodya Galstyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //--------------------- For-In Loops -------------------------
        var names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello, \(name)!")
        }
        
        names.sort { (s1, s2) -> Bool in
          return s1 > s2
        }
        
        self.getData(array: [], success: { (message, data) in
            print("\(message) and data count is : \(data.count)")
        }) { (message) in
            print("\(message)")
        }
        
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        let numbers = [16, 58, 510]
        
        let strings = numbers.map { (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            return output
        }
        
        //----------------------------------------------
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
        
        //----------------------------------------------
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        //----------------------------------------------
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
            print("answer : \(answer)")
        }
        
        print("\(base) to the power of \(power) is \(answer)")

        //----------------------------------------------
        let minutes = 60
        for tickMark in 0..<minutes {
            // render the tick mark each minute (60 times)
            print("tickMark = \(tickMark)")
        }
        
        //----------------------------------------------
        let minuteInterval = 5
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
            // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
            print("tickMark = \(tickMark)")
        }
        
        //----------------------------------------------
        let hours = 12
        let hourInterval = 3
        for tickMark in stride(from: 3, through: hours, by: hourInterval) {
            // render the tick mark every 3 hours (3, 6, 9, 12)
            print("tickMark = \(tickMark)")
        }
        
        //--------------------- While Loops -------------------------
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            // roll the dice
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            // move by the rolled amount
            square += diceRoll
            if square < board.count {
                // if we're still on the board, move up or down for a snake or a ladder
                square += board[square]
            }
        }
        print("Game over!")
        
        //----------------------------------------------
        square = 0
        diceRoll = 0
        repeat {
            // move up or down for a snake or ladder
            square += board[square]
            // roll the dice
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            // move by the rolled amount
            square += diceRoll
        } while square < finalSquare
        print("Game over!")
        
        //--------------------- IF -------------------------
        
        var temperatureInFahrenheit = 30
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        }
        
        var str1: String?
        //str1 = "test"
       
        guard let str2 = str1 else {
            print("serveic nil e ekel")
            return
        }
        
        print(str2)
        
        //----------------------------------------------
        temperatureInFahrenheit = 40
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        } else {
            print("It's not that cold. Wear a t-shirt.")
        }
        
        //----------------------------------------------
        temperatureInFahrenheit = 90
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        } else if temperatureInFahrenheit >= 86 {
            print("It's really warm. Don't forget to wear sunscreen.")
        } else {
            print("It's not that cold. Wear a t-shirt.")
        }
        
        //----------------------------------------------
        temperatureInFahrenheit = 72
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        } else if temperatureInFahrenheit >= 86 {
            print("It's really warm. Don't forget to wear sunscreen.")
        }
        
        //-------------------- Switch --------------------------
        
        let someCharacter: Character = "z"
        switch someCharacter {
        case "a":
            print("The first letter of the alphabet")
        case "z":
            print("The last letter of the alphabet")
        default:
            print("Some other character")
        }
        
        
        let dic = ["a": "test1", "b": "test2"]
        
        switch dic["a"] {
        case "test1":
            print("inqn e")
        case "test2":
            print("urish e")
        default:
            break
        }
        //----------------------------------------------
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        let naturalCount: String
        
        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        
        //----------------------------------------------
        let somePoint = (1, 1)
        
        switch somePoint {
        case (0, 0):
            print("\(somePoint) is at the origin")
        case (_, 0):
            print("\(somePoint) is on the x-axis")
        case (0, _):
            print("\(somePoint) is on the y-axis")
        case (-2...2, -2...2):
            print("\(somePoint) is inside the box")
        default:
            print("\(somePoint) is outside of the box")
        }
        
         //----------------------------------------------
        let anotherPoint = (2, 0)
        
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
        
         //----------------------------------------------
        let yetAnotherPoint = (1, -1)
        
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("(\(x), \(y)) is just some arbitrary point")
        }
        
         //----------------------------------------------
        let someCharacter2: Character = "e"
        
        switch someCharacter2 {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter2) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter2) is a consonant")
        default:
            print("\(someCharacter2) is not a vowel or a consonant")
        }
        
         //----------------------------------------------
        let stillAnotherPoint = (9, 0)
        switch stillAnotherPoint {
        case (let distance, 0), (0, let distance):
            print("On an axis, \(distance) from the origin")
        default:
            print("Not on an axis")
        }
        
        //-------------- Control Transfer Statements ------------
        
        let puzzleInput = "great minds think alike"
        var puzzleOutput = ""
        let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
        for character in puzzleInput {
            if charactersToRemove.contains(character) {
                continue
            }
            puzzleOutput.append(character)
        }
        print(puzzleOutput)
        //----------------------------------------------
        let numberSymbol: Character = "三"  // Chinese symbol for the number 3
        var possibleIntegerValue: Int?
        switch numberSymbol {
        case "1", "١", "一", "๑":
            possibleIntegerValue = 1
        case "2", "٢", "二", "๒":
            possibleIntegerValue = 2
        case "3", "٣", "三", "๓":
            possibleIntegerValue = 3
        case "4", "٤", "四", "๔":
            possibleIntegerValue = 4
        default:
            break
        }
        if let integerValue = possibleIntegerValue {
            print("The integer value of \(numberSymbol) is \(integerValue).")
        } else {
            print("An integer value could not be found for \(numberSymbol).")
        }
        
        //----------------------------------------------
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        print(description)
        
        //----------------------------------------------
//        gameLoop: while square != finalSquare {
//            diceRoll += 1
//            if diceRoll == 7 { diceRoll = 1 }
//            switch square + diceRoll {
//            case finalSquare:
//                // diceRoll will move us to the final square, so the game is over
//                break gameLoop
//            case let newSquare where newSquare > finalSquare:
//                // diceRoll will move us beyond the final square, so roll again
//                continue gameLoop
//            default:
//                // this is a valid move, so find out its effect
//                square += diceRoll
//                square += board[square]
//            }
//        }
//        print("Game over!")
        
        //----------------------------------------------
        func greet(person: [String: String]) {
            guard let name = person["name"] else {
                return
            }
            
            print("Hello \(name)!")
            
            guard let location = person["location"] else {
                print("I hope the weather is nice near you.")
                return
            }
            
            print("I hope the weather is nice in \(location).")
        }
        
        greet(person: ["name": "John"])
        // Prints "Hello John!"
        // Prints "I hope the weather is nice near you."
        greet(person: ["name": "Jane", "location": "Cupertino"])
        
        //----------------------------------------------
    }


    func getData(array: [String], success: ((_ message: String, _ data: [String]) -> ()), fail: ((_ errorMessage: String) -> ())) {
        
        if array.count > 0 {
            success("Data exist", array)
        } else {
            fail("Data is empty")
        }
    }
}

