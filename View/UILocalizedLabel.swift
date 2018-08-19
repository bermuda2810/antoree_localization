//
//  UILocalizedLabel.swift
//  Antoree
//
//  Created by Bui Quoc Viet on 6/29/18.
//  Copyright © 2018 Mobile Team. All rights reserved.
//

import UIKit

@IBDesignable class UILocalizedLabel: UILabel {
    
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            text = text?.localized(tableName: tableName)
        }
    }
}
