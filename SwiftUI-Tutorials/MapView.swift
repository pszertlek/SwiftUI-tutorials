//
//  MapView.swift
//  SwiftUI-Tutorials
//
//  Created by apple on 2019/6/13.
//  Copyright © 2019 Pszertlek. All rights reserved.
//

import SwiftUI
import MapKit

/*The UIViewRepresentable protocol has two requirements you need to add: a makeUIView(context:) method that creates an MKMapView, and an updateUIView(_:context:) method that configures the view and responds to any changes.
Replace the body property with a makeUIView(context:) method that creates and returns an empty MKMapView.
Create an updateUIView(_:context:) method that sets the map view’s region to the correct coordinates to center the map on Turtle Rock.
*/
struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType {
        return MKMapView(frame: CGRect.zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#if DEBUG

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landMarkData[0].locationCoordinate)
    }
}

#endif
