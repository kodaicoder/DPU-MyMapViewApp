//
//  PoiAnnotationView.swift
//  MyMapViewApp
//
//  Created by Student on 19/11/2565 BE.
//

import SwiftUI

struct PoiAnnotationView: View {
    let myPOI: PinModel
    //ตัวแปรควบคุมการแสดง/ไม่แสดงปุ่ม PoiDetailView
    @State private var showPoiDetailView: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Button(action: {
                self.showPoiDetailView.toggle()
            }){
                HStack{
                    Text(myPOI.name)
                        .font(.footnote)
                        
                    Image(systemName: "arrow.forward.circle.fill")
                        .font(.system(size: 15))
                }
                .padding(8)
                .background(Color(hue: 0.501, saturation: 0.311, brightness: 1.0))
                .cornerRadius(10)
            }
            .sheet(isPresented: $showPoiDetailView) {
                PoiDetailView(myPOI: myPOI)
                    .presentationDetents([.fraction(0.25),.large])
            }
           
            Image(systemName: myPOI.icon)
                .font(.title2)
                .padding(5)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
            Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(.red)
                .offset(x: 0, y: -2)
        }
    }
}

struct PoiAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        PoiAnnotationView(myPOI: PinModel(name: "ชื่อสถานที่",latitude: 0.0, longitude: 0.0,icon:"apple.logo"))
    }
}
