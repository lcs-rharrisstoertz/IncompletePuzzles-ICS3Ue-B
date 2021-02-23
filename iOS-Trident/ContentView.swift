//
//  ContentView.swift
//  iOS-Trident
//
//  Created by Harris-Stoertz, Rowan on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tineLength: String
    @State private var spacing: String
    @State private var handleLength: String
    
    var body: some View {
        Form {
            TextField("Enter tine length", text: $tineLength)
                .keyboardType(.numberPad)
            TextField("Enter tine spacing", text: $spacing)
                .keyboardType(.numberPad)
            TextField("Enter handle length", text: $handleLength)
                .keyboardType(.numberPad)
            Section(header: "Trident"){
                Text(drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
