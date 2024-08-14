//
//  TabBar.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 14.08.2024.
//

import SwiftUI

struct TabBar: View {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor(named: "green")
    }
    
    var body: some View {
        TabView {
            NavigationView {
                MenuAdminView()
            }.tabItem {
                Image(systemName: "menucard")
                Text("Menu")
            }
        }.accentColor(Color(.white))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
