//
//  TSButton.swift
//  Transfer
//
//  Created by Alex Linkov on 5/29/21.
//  Copyright © 2021 SDWR. All rights reserved.
//

import UIKit

public class TSButton: UIButton {
    
    public override func setTitle(_ title: String?, for state: UIControl.State) {
        let ttl = "   \(title ?? "")   "
        super.setTitle(ttl, for: state)
    }
}
