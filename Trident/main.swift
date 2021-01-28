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

func drawTrident(tineLength: Int, tineSpacing: Int, handleLength: Int)-> String {
    var output = ""
    // Produce top of trident according to length given
    if tineLength > 1 {
        for _ in 1...tineLength {
            // Print the tines
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
            // Go to next line of output
            output += ("\n")
        }
    } else if tineLength == 1 {
        for _ in 1...3 {
            
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
        // Go to next line of output
        output += ("\n")
    }
    
    if spacing > 0 {
        for _ in 1...(spacing*2) {
        output += ("*")
        }
    }
    output += ("***")
    if handleLength != 0 {
        for _ in 1...handleLength {
            output += ("\n")
            for _ in 1...spacing+1{
                output += (" ")
            }
            output += ("*")
        }
    }
    return output
}
print (drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))
