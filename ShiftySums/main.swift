//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
let n = Int(readLine()!)!

// How many times should we shift?
let k = Int(readLine()!)!

// PROCESS


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

//OUTPUT
let shiftedNumber = shift(n:n, k:k)
print(shiftedNumber)

