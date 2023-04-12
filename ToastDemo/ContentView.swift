//
//  ContentView.swift
//  ToastDemo
//
//  Created by wei hu on 2023/4/12.
//

import SwiftUI
 
struct ContentView: View {
    @State private var message = ""
    @State private var isShowing = false
    
    var body: some View {
        VStack {
            Button("Show Toast") {
                message = "Hello, World!"
                isShowing = true
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(10)
            .toast(message: $message, isShowing: $isShowing)
        }
    }
}
