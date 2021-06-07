//
//  TSButton.swift
//  Transfer
//
//  Created by Alex Linkov on 5/29/21.
//  Copyright © 2021 SDWR. All rights reserved.
//

import UIKit

public class TSButton: UIButton {
    
    public var isEnalable = false {
        didSet {
            if (isEnalable) {
                setTitleColor(.black, for: .normal)
            } else {
                setTitleColor(.yellow, for: .normal)
            }
        }
    }

    public override func didMoveToSuperview() {
        
        layer.borderWidth = 3
        layer.borderColor = UIColor.yellow.cgColor
        layer.cornerRadius = 6
        setTitleColor(.yellow, for: .normal)
    
        
        titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        setTitleColor(UIColor.yellow.withAlphaComponent(0.5), for: .disabled)
        
        
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        if (isEnalable) {
            if (isEnabled) {
                backgroundColor = .yellow
                layer.borderColor = UIColor.yellow.cgColor
            } else {
                backgroundColor = .black
                layer.borderColor = UIColor.yellow.withAlphaComponent(0.5).cgColor
            }
        } else {
            
            if (isEnabled) {
                layer.borderColor = UIColor.yellow.withAlphaComponent(0.5).cgColor
            } else {
                layer.borderColor = UIColor.yellow.cgColor
            }
        }

    }
    
    public override func setTitle(_ title: String?, for state: UIControl.State) {
        let ttl = "   \(title ?? "")   "
        super.setTitle(ttl, for: state)
    }
}
