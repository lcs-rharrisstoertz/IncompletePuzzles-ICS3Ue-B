//
//  Functions.swift
//  IncompletePuzzles
//
//  Created by Harris-Stoertz, Rowan on 2021-02-22.
//

import Foundation

func divisorCount(of givenNumber: Int) -> Int {
    
    // 1 is always a divisor
    var divisorCount = 1
    
    // Start looping from 2
    for i in 2...givenNumber {
        
        // What is the remainder?
        let remainder = givenNumber % i
        
        //        // DEBUG output...
        //        print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")
        
        // TODO: Add some code here... we need to keep track of how many divisors there are
        if remainder == 0 {
            divisorCount += 1
        }
        
    }
    
    // Return the count of divisors
    return divisorCount
    
}

func countOfRSANumbersFrom (lower: Int, upper: Int) -> String {
    var RSANumbers = 0
    for givenNumber in lower...upper {
        if divisorCount(of: givenNumber) == 4 {
            RSANumbers += 1
        }
    }
    return ("The number of RSA numbers between \(lower) and \(upper) is \(RSANumbers)")
}

func drawTrident(tineLength: Int,
                 tineSpacing: Int,
                 handleLength: Int)-> String {
    var output = ""//reset output variable to empty
    // Produce top of trident according to length given
    if tineLength > 1 {//if the tines are longer than 1
        for _ in 1...tineLength {
            // Print the tines
            for _ in 1...2 {
                
                // Print part of a tine
                output += ("*")
                
                if tineSpacing > 1 {
                    for _ in 1...tineSpacing {
                        output += (" ")
                    }
                } else if tineSpacing == 1 {//adds spaces between the tines
                    output += (" ")
                }
            }
            output += ("*")//this prints one asterisk for the last trident tine
            // Go to next line of output
            output += ("\n")
        }//tine-printing loop ends- it will have repeated tineLength times to fully make all three tines
    } else if tineLength == 1 {//if the tine length is one, it doesn't like creating the range, so it has its own program to print the tines without a range
        for _ in 1...2 {
            
            // Print part of a tine
            output += ("*")
            
            if tineSpacing > 1 {
                for _ in 1...tineSpacing {
                    output += (" ")
                }
            } else if tineSpacing == 1 {
                output += (" ")
            }
        }
        output += ("*")
        //all tines are printed- if the tine length is 0, the program skips this part of the process
        // Go to next line of output
        output += ("\n")
    }
    
    if tineSpacing > 0 {
        for _ in 1...(tineSpacing*2) {
            output += ("*")
        }
    }
    output += ("***")
    if handleLength != 0 {
        for _ in 1...handleLength {
            output += ("\n")
            for _ in 1...tineSpacing+1{
                output += (" ")
            }
            output += ("*")
        }
    }
    return output
}

func shift (n: Int, k: Int) -> Int {
    var output = n
    if k > 0 { /*the test tried to enter 0, but I can't have a range from 1 to 0. So I added the stipulation that that code should only run if K is greater than 0. If it's 0, then it just returns the original number, n*/
        for i in 1...k {
            print("i is \(i)")
            var toAdd = n
            for _ in 1...i {
                toAdd *= 10
            }
            output+=toAdd
        }
    }
    return output
}

func translate(phrase shortForm: String) -> String {
    repeat {
    print("Enter phrase> ", terminator: "")
    let phrase = readLine()!

    // NOTE: Instead of an "if statement" consider using a different type of Swift structure to handle all the different possible cases...
    switch shortForm {
    case "CU":
        return "see you"
    case ":-)":
        return "I'm happy"
    case ":-(":
        return "I'm unhappy"
    case ";-)":
        return "wink"
    case ":-P":
        return "stick out my tongue"
    case "(˜.˜)":
        return "sleepy"
    case "TA":
        return "totally awesome"
    case "CCC":
        return "Canadian Cheese Champion"
    case "CUZ":
        return "because"
    case "TY":
        return "thank-you"
    case "YW":
        return "you're welcome"
    case "TTYL":
        return "talk to you later"
    default:
        return shortForm
    }} while shortForm != "talk to you later"

}

func compareCosts(day: Int, evening: Int, weekend: Int) -> String {
    
    // Calculate cost for plan A
    var a = 0
    
    // Add daytime cost
    if day > 100 {
        a += (day - 100) * 25
    }
    
    // Add evening cost
    a += evening * 15
    
    // Add weekend cost
    a += weekend * 20
    
    // Calculate cost for plan B
    var b = 0
    
    // Add daytime cost
    if day > 250 {
        b += (day - 250) * 45
    }
    
    // Add evening cost
    b += evening * 35
    
    // Add weekend cost
    b += weekend * 25
    
    // Build the result to be returned
    var result = ""
    
    result += "Plan A costs \(a)\n"
    result += "Plan B costs \(b)\n"
    
    if a > b {
        result += "Plan B is cheapest."
    } else if a == b {
        result += "Plans A and B are the same price."
    } else {
        result += "Plan A is cheapest."
    }
    
    // Return the result
    return result
    
}
