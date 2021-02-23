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


//OUTPUT
print (drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))
