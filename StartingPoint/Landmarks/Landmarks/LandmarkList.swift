//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Umer Shehzad Akhtar on 7/20/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //this generated each element in the layout from the array of data
        NavigationView{
        
        List(landmarkData) { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)){
            LandmarkRow(landmark: landmark)
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iphone SE", "iphone 11"], id: \.self){
         deviceName in
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
