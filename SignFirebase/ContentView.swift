//
//  ContentView.swift
//  SignFirebase
//
//  Created by Eduardo Jordan on 19/3/25.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @AppStorage("uid") var userID: String = ""
    var body: some View {
        if userID == "" {
            AuthView()
        } else {
            Text("Logged In! \nYour user id is \(userID)")
            
            Button(action: {
                let firebaseAuth = Auth.auth()
                do {
                    try firebaseAuth.signOut()
                    withAnimation {
                        userID = ""
                    }
                } catch let signOutError as NSError {
                    print("Error signing out: %@", signOutError)
                }
            }) {
                Text("Sign Out")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
