//
//  WorldView.swift
//  SkateMap
//
//  Created by Rowen Peebles on 30/05/2022.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 56.816918399 ,
            longitude: -4.1826492694),
        span: MKCoordinateSpan(
            latitudeDelta: 6,
            longitudeDelta: 6)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems:
                locations.places) { location in
            MapAnnotation(coordinate:
                    CLLocationCoordinate2D(
                    latitude: location.latitude,
                    longitude: location.longitude)) {
                    NavigationLink(destination: ContentView(location: location)) {
                        Image(systemName: "circle.dashed.inset.filled")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 10, height: 10)
                            .shadow(radius: 10)
                        }

                    }
        }
        .navigationTitle("Skate Map")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
