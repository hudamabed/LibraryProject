//
//  UserProfile.swift
//  University Library
//
//  Created by Huda M. A'abed on 23/07/2023.
//

import Foundation
import UIKit

class userProfile{
    static let shared = userProfile()
    var isRtl: Bool{
        return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
    }
}
