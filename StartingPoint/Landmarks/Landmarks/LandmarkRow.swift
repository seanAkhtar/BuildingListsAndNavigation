//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Umer Shehzad Akhtar on 7/20/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            landmark.image
            //resizable make the image smaller
            .resizable()
            .frame(width: 55, height: 55)
            Text(landmark.name)
            Spacer()
    
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
           .previewLayout(.fixed(width: 300, height: 70))
    }
}
