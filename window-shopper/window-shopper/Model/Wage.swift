//
//  Wage.swift
//  window-shopper
//
//  Created by Jess Leivers on 17/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import Foundation


class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        if (wage <= 0 || price <= 0) {
            return 0
        } else {
            return Int(ceil(price / wage))
        }
    }
}
