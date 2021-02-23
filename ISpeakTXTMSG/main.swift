//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

// INPUT

// Ask for a phrase

// PROCESS
//Parameters are inputs to the function
//Parameters are separated by commas
//Parameters can have an internal and external name
//In this case, "translate" has one parameter
//external name is phrase
//internal name is Shortform


// OUTPUT
//Here, we are at the "call site"
//This is where a function is "called" or "invoked"
//The external parameter name shows at the call site
//in my color scheme as of Jan 25, the parameter name shows up as black
//what we pass in for a parameter is referred to as the argument

let output = translate(phrase: phrase)
print(output)
