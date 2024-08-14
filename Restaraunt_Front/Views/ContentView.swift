//
//  ContentView.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 09.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @State var login: String = ""
        @State var password: String = ""
        
        VStack {
            AuthView()
        }
        //.padding()
       .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
