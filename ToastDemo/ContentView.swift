//
//  ContentView.swift
//  ToastDemo
//
//  Created by wei hu on 2023/4/12.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var toast: Toast

    var body: some View {
        VStack {
            Button("Show Toast") {
                self.toast.showToast(message: "Hello, World!")
            }
        }
        .toast(isShowing: $toast.isShowing, message: toast.message)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Toast())
    }
}
