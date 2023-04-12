//
//  ToastDemoApp.swift
//  ToastDemo
//
//  Created by wei hu on 2023/4/12.
//

import UIKit
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var toast = Toast(message: "", isShowing: false)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootView = ContentView()
            .environmentObject(toast)
        
        window.rootViewController = UIHostingController(rootView: rootView)
        window.makeKeyAndVisible()
        
        return true
    }
}
