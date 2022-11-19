//
//  MyMapPin.swift
//  MyMapViewApp
//
//  Created by Student on 12/11/2565 BE.
//

import MapKit
struct PinModel: Identifiable {
    //กําหนดตัวแปรที่จะใช้เก็บข้อมูลสถานที่น่าสนใจ
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    let icon: String
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
