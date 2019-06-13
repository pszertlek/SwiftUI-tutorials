//
//  LandMarkList.swift
//  SwiftUI-Tutorials
//
//  Created by apple on 2019/6/13.
//  Copyright © 2019 Pszertlek. All rights reserved.
//

import SwiftUI

struct LandMarkList : View {
    var body: some View {
        NavigationView {
            List(landMarkData.identified(by: \.id)) { landmark in

//                NavigationButton<LandMarkRow, LandMarkDetail>(destination: LandMarkDetail(landMark: landmark)) {
                    LandMarkRow(landMark: landmark)
//                }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
        }
    }
}

#if DEBUG
struct LandMarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
#endif
