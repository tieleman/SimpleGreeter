//
//  ContentView.swift
//  SimpleGreeter
//
//  Created by Sjoerd Tieleman on 25/02/2020.
//  Copyright © 2020 Sjoerd Tieleman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String =  ""
    
    private var greeterText: String {
        name.isEmpty ? "" : "Nice to meet you, \(name)."
    }
    
    var body: some View {
        VStack {
            Text("Please enter your name below")
                .accessibility(identifier: "enterNameLabel")
            TextField("Your name", text: $name)
            Text(greeterText)
                .accessibility(identifier: "greetingTextLabel")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
