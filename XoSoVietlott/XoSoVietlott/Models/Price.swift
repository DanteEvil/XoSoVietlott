//
//  Price.swift
//  XoSoVietlott
//
//  Created by Truong Le on 9/24/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import Foundation

enum Price: String {
    case mega = "Mega 6/45"
    case power = "Power 6/55"
    
    var limitNums: [Int] {
        switch self {
        case .mega:
            return [Int](1...45)
        case .power:
            return [Int](1...55)
        }
    }
}
