//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT

// Get tine length
let tinelength = Int.collectInput(withPrompt: "Enter tine length: ",
                           minimum: 0,
                           maximum: 10)

// Get tine spacing
let spacing = Int.collectInput(withPrompt: "Enter tine spacing: ",
                           minimum: 0,
                           maximum: 10)

// Get handle length
let handleLength = Int(readLine()!)!
let handleLength = Int.collectInput(withPrompt: "Enter handle length: ",
                           minimum: 0,
                           maximum: 10)

// PROCESS

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
//OUTPUT
print (drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))
