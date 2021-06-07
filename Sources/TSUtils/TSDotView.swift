//
//  TSDotView.swift
//  Transfer
//
//  Created by Alex Linkov on 5/29/21.
//  Copyright © 2021 SDWR. All rights reserved.
//

import UIKit

class TSDotView: UIView {

    override func didMoveToSuperview() {
        
        layer.cornerRadius = self.frame.width / 2
        layer.masksToBounds = true
    }
    
}
