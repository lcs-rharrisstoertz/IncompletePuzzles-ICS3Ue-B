//
//  ContentView.swift
//  iOS-Trident
//
//  Created by Harris-Stoertz, Rowan on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tinelength: String
    @State private var spacing: String
    @State private var handleLength: String
    
    var body: some View {
        Form {
            TextField("Enter tine length", text: $tinelength)
                .keyboardType(.numberPad)
            TextField("Enter tine spacing", text: $spacing)
                .keyboardType(.numberPad)
            TextField("Enter handle length", text: $handleLength)
                .keyboardType(.numberPad)
        }
    }
}
