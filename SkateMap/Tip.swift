//
//  Tip.swift
//  SkateMap
//
//  Created by Rowen Peebles on 30/05/2022.
//

import Foundation

struct Tip: Decodable {
    
    let text: String
    let children: [Tip]?
    
}
