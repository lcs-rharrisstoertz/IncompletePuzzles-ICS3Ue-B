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
    @State private var output: String
    
    private var output: String = {
        guard let tineLength = Int(tineLength) else { return "Please enter numerical values"}
        guard let spacing = Int(spacing) else { return "Please enter numerical values"}
        guard let handleLength = Int(handleLength) else { return "Please enter numerical values"}
        output = (drawTrident(tineLength: Int(tineLength), tineSpacing: Int(spacing), handleLength: Int(handleLength))
    }
    
    var body: some View {
        Form {
            TextField("Enter tine length", text: $tineLength)
                .keyboardType(.numberPad)
            TextField("Enter tine spacing", text: $spacing)
                .keyboardType(.numberPad)
            TextField("Enter handle length", text: $handleLength)
                .keyboardType(.numberPad)
            Section(header: "Trident"){
                Text(output)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
