//
//  ContentView.swift
//  MyMapViewApp
//
//  Created by Student on 12/11/2565 BE.
//

import SwiftUI
import MapKit

struct MainView: View {
    //ตัวแปรที่ใช้ระบุบริเวณที่ต้องการให้แผนที่แสดงบนหน้าจอ
    @State private var region = MKCoordinateRegion(center:CLLocationCoordinate2D( latitude: 13.7563, longitude: 100.5018), span:MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    private let myPins = [
        PinModel(name: "Apple Store ICONSIAM", latitude:
                    13.7263851, longitude: 100.5086877,icon: "apple.logo"),
        PinModel(name: "Apple South Asia (Thailand)", latitude:
                    13.7460778, longitude: 100.5360801,icon:"apple.logo"),
        PinModel(name: "King Power MahaNakhon", latitude:
                    13.7233652, longitude: 100.5260607,icon:"bag.fill"),
        PinModel(name: "Lumphini Park", latitude: 13.7314058,
                 longitude: 100.5392509,icon:"figure.run.circle.fill")
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: myPins){ pin in
            MapAnnotation(coordinate: pin.coordinate) {
                PoiAnnotationView(myPOI: pin)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
