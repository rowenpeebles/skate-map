//
//  Location.swift
//  SkateMap
//
//  Created by Rowen Peebles on 30/05/2022.
//

import Foundation

struct Location: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let country: String
    let description: String
    let cost: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let address: String
    
    static let example = Location(id: 1, name:"Transition Extreme", country: "Scotland", description: "Transition Extreme Skatepark, or TX as it’s known by the locals, is Aberdeen’s very own plywood paradise, providing the North East with an unbeatable space for skateboarding, BMXing and inline skating. Built in 2007, the parks design was the brainchild of local skateboarding and skatepark builder Andy Dobson who, alongside Dave Partridge from Carve Skatepark Design and with the input of local skaters and BMXers has created a world class, challenging layout based on the flow of outdoor concrete parks.", cost: "1 hour session = £7.50", latitude: 35.6532, longitude: -83.5070, heroPicture: "transitionextreme", address: "Links Road, Aberdeen, Scotland, AB24 5NN")
    
}
