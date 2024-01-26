//
//  TabController.swift
//  GeoWIseSwiftUI
//
//  Created by Soori on 2024-01-10.
//

import Foundation
import SwiftUI

struct TabController: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            ForumView()
                .tabItem {
                    Image(systemName: "bubble.left")
                    Text("Forum")
                }
                .tag(0)
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)

            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(2)
        }
    }
}

struct TabController_Previews: PreviewProvider {
    static var previews: some View {
        TabController()
    }
}
