//
//  LandMarkRow.swift
//  SwiftUI-Tutorials
//
//  Created by apple on 2019/6/13.
//  Copyright © 2019 Pszertlek. All rights reserved.
//

import SwiftUI

struct LandMarkRow : View {
    var landMark: LandMark
    
    var body: some View {
        HStack {
            landMark.image(forSize: 50)
            Text(landMark.name)
            Spacer()
        }
    }
}

#if DEBUG
struct LandMarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandMarkRow(landMark: landMarkData[0])
    }
}
#endif
