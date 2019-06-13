//
//  UserData.swift
//  SwiftUI-Tutorials
//
//  Created by apple on 2019/6/13.
//  Copyright © 2019 Pszertlek. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landMarkData {
        didSet {
            didChange.send(self)
        }
    }
}
