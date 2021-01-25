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
print("Enter phrase> ", terminator: "")
let phrase = readLine()!

// PROCESS
//Parameters are inputs to the function
//Parameters are separated by commas
//Parameters can have an internal and external name
//In this case, "translate" has one parameter
//external name is phrase
//internal name is Shortform
func translate(phrase shortForm: String) -> String {

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
    }

}

// OUTPUT
//Here, we are at the "call site"
//This is where a function is "called" or "invoked"
//The external parameter name shows at the call site
//in my color scheme as of Jan 25, the parameter name shows up as black
//what we pass in for a parameter is referred to as the argument

let output = translate(phrase: phrase)
print(output)
