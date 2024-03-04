//
//  ContentView.swift
//  swift-ui-training
//
//  Created by Karim Soliman on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /// logo widget
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            /// Text Widget
            Text("Hello, world!")
        }
        .padding()
    }
}


/// For preview while debugging
#Preview {
    ContentView()
}
