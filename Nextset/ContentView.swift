//
//  ContentView.swift
//  Nextset
//
//  Created by Soori on 2024-01-27.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // Existing tab views...

            NavigationView {
                RegistrationView()

            }
            .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
