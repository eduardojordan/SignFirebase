//
//  SignFirebaseApp.swift
//  SignFirebase
//
//  Created by Eduardo Jordan on 19/3/25.
//

import SwiftUI
import FirebaseCore

@main
struct SignFirebaseApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
