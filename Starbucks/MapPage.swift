//
//  MapPage.swift
//  Starbucks
//
//  Created by mohammed alsaad on 18/05/2023.
//

import SwiftUI
import MapKit

struct MapPage: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        ZStack {
            VStack{
                Map(coordinateRegion: $region)
                            .frame(width: 400, height: 900)
                Spacer()
            }
            
            VStack{
                
                Text("Pick a Story")
                    .font(.largeTitle)
                    .bold()
                    
                    
                Spacer()
            }
            .padding(.all , 100)
            
        }
        
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        MapPage()
    }
}
