//
//  ContentView.swift
//  SkateMap
//
//  Created by Rowen Peebles on 30/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
                
        ScrollView {
            
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
                .shadow(radius: 3)

            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding()
            
            Text("Address:")
                .bold()
                .padding(.bottom)
            
            Text(location.address)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            NavigationView {
                ContentView(location: Location.example)
            }
        }
    }
}
