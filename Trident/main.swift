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
print("Enter tine length:")
print("   ", terminator: "")
let tineLength = Int(readLine()!)!

// Get tine spacing
print("Enter tine spacing:")
print("   ", terminator: "")
let spacing = Int(readLine()!)!

// Get handle length
print("Enter handle length:")
print("   ", terminator: "")
let handleLength = Int(readLine()!)!

// OUTPUT
var output = ""

func drawTrident(tineLength: Int, tineSpacing: Int, handleLength: Int)-> String {
    // Produce top of trident according to length given
    for _ in 1...tineLength {
        // Print the tines
        for _ in 1...3 {
            
            // Print part of a tine
            output += ("*")
            
            // Print space between tines
            for _ in 1...spacing {
                output += (" ")
            }
            
        }
        // Go to next line of output
        output += ("\n")
    }
    for _ in 1...spacing*2+3 {
        output += ("*")
    }

    for _ in 1...handleLength {
        output += ("\n")
        for _ in 1...spacing+1{
            output += (" ")
        }
        output += ("*")
    }
    return output
}
print (drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))

//func drawTrident(tineLength: Int, tineSpacing: Int, handleLength: Int)-> String {
//    // Produce top of trident according to length given
//    for _ in 1...tineLength {
//        // Print the tines
//        for _ in 1...3 {
//
//            // Print part of a tine
//            output += ("*")
//
//            // Print space between tines
//            for _ in 1...spacing {
//                output += (" ")
//            }
//
//        }
//        // Go to next line of output
//        output += ("\n")
//    }
//    for _ in 1...spacing*2+3 {
//        output += ("*")
//    }
//    output += ("\n")
//
//    for _ in 1...handleLength {
//        for _ in 1...spacing+1{
//            output += (" ")
//        }
//        output += ("*")
//        for _ in 1...spacing+1{
//            output += (" ")
//        }
//        output += ("\n")
//    }
//    return output
//}
//print (drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))
