//
//  ToastView.swift
//  ToastDemo
//
//  Created by wei hu on 2023/4/12.
//

import SwiftUI

struct ToastView: View {
let text: String

var body: some View {
    HStack {
        Text(text)
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(Color.secondary)
            .foregroundColor(Color.primary)
            .cornerRadius(5)
        Spacer()
    }
    .padding(.horizontal)
    .transition(.slide)
    .animation(.easeInOut(duration: 0.5))
}
}
