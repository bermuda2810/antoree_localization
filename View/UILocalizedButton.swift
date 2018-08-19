//
//  UILocalizedButton.swift
//  Antoree
//
//  Created by Bui Quoc Viet on 6/29/18.
//  Copyright © 2018 Mobile Team. All rights reserved.
//

import UIKit

@IBDesignable class UILocalizedButton: UIButton {
    
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            let title = self.title(for: .normal)?.localized(tableName: tableName)
            setTitle(title, for: .normal)
        }
    }
}
