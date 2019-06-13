//
//  LandMarkDetail.swift
//  SwiftUI-Tutorials
//
//  Created by apple on 2019/6/13.
//  Copyright © 2019 Pszertlek. All rights reserved.
//

import SwiftUI

struct LandMarkDetail : View {
    var landMark: LandMark
    var body: some View {
        VStack {
            MapView(coordinate: landMark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)//safe area show this
                .frame(height: 300)
            Image("turtlerock")
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius: 10)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            VStack {
                Text(landMark.name)
                    .font(.title)
                HStack {
                    Text(landMark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landMark.state)
                        .font(.subheadline)
                    }.padding()
            }
            
            Spacer()
        }
            .navigationBarTitle(Text(verbatim: landMark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandMarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landMark: landMarkData[0])
    }
}
#endif
