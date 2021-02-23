//
//  ContentView.swift
//  iOS-RSANumbers
//
//  Created by Harris-Stoertz, Rowan on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    @State private var upper: String
    @State private var lower: String
    var body: some View {
        Form {
            TextField("Enter lower limit of range", text: $lower)
            TextField("Enter upper limit of range", text: $upper)
            Text (countOfRSANumbersFrom (lower: Int(lower)!, upper: Int(upper)!))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
