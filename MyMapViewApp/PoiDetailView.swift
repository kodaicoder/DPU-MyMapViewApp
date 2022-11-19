//
//  PoiDetailView.swift
//  MyMapViewApp
//
//  Created by Student on 19/11/2565 BE.
//

import SwiftUI

struct PoiDetailView: View {
    let myPOI : PinModel
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            Text("\(myPOI.name)")
                .font(.title)
                .fontWeight(.bold)
            Text("(\(myPOI.latitude) , \(myPOI.longitude))")
            Spacer()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        }
       
    }
}

struct PoiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PoiDetailView(myPOI: PinModel(name: "MyOffice", latitude:0.00000, longitude: 0.0000,icon:"apple.logo"))
    }
}
