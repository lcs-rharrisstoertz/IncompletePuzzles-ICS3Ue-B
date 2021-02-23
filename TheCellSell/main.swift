//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-the-cell-sell.pdf
//

import Foundation

print("The Cell Sell")
print("=============")

// INPUT

// Get daytime minutes
var day = Int.collectInput(withPrompt: "Number of daytime minutes? ",
                           minimum: 0,
                           maximum: nil)

// Get evening minutes
var evening = Int.collectInput(withPrompt: "Number of evening minutes? ",
                               minimum: 0,
                               maximum: nil)

// Get weekend minutes
var weekend = Int.collectInput(withPrompt: "Number of weekend minutes? ",
                               minimum: 0,
                               maximum: nil)


// PROCESS
//
// NOTE: To unit test logic you have written, it must be encapsulated (described) within a function.
//
//       Write a function with:
//
//       1. a meaningful name
//       2. parameters that describe the input required
//            (in this case, three integers)
//       3. an appropriate return type
//            (in this case, a string describing what plan is least expensive)
//

// OUTPUT
//
// Invoke the new function to get result and print it to the screen
let output = compareCosts(day: day,
                          evening: evening,
                          weekend: weekend)
print(output)
