//
//  LandingView.swift
//  FindingSums
//
//  Created by Pak Ching Ethan Chen on 2025-01-13.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
            
            ContentView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Plus")
                }
                .tag(1)
            
            MinusView()
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Minus")
                }
                .tag(2)
 
            MultiplyView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Multiply")
                }
                .tag(3)
            DivideView()
                .tabItem{
                    Text("Divide")
                }
            
        }
        .tint(.blue)
        .preferredColorScheme(.light)

    }
}

#Preview {
    LandingView()
}
