//
//  ContentView.swift
//  iOS-RSANumbers
//
//  Created by Harris-Stoertz, Rowan on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    @State private var upper: Int
    @State private var lower: Int
    var body: some View {
        Form {
            TextField("Enter lower limit of range", text: $lower)
            TextField("Enter upper limit of range", text: $upper)
            Text (countOfRSANumbersFrom (lower: lower, upper: upper))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
