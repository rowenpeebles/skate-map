//
//  SkateMapApp.swift
//  SkateMap
//
//  Created by Rowen Peebles on 30/05/2022.
//

import SwiftUI

@main
struct SkateMapApp: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }
            .environmentObject(locations)

        }
    }
}
