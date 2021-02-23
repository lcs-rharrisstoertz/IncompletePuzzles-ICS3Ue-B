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
let n = Int.collectInput(withPrompt: "",
                           minimum: 0,
                           maximum: 10000)

// How many times should we shift?
let k = Int.collectInput(withPrompt: "",
                           minimum: 0,
                           maximum: 5)

// PROCESS



//OUTPUT
let shiftedNumber = shift(n:n, k:k)
print(shiftedNumber)

