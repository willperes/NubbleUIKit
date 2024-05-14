//
//  Typography.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import Foundation

enum Typography {
    case headingLarge
    case headingMedium
    
    case paragraphLarge
    
    var size: CGFloat {
        switch self {
        case .headingLarge: 32
        case .headingMedium: 22
            
        case .paragraphLarge: 18
        }
    }
}
