//
//  TSButton.swift
//  Transfer
//
//  Created by Alex Linkov on 5/29/21.
//  Copyright © 2021 SDWR. All rights reserved.
//

import UIKit

public class TSButton: UIButton {
    public var isBig: Bool = false
    @IBInspectable public var isGrayedOut: Bool = true
    @IBInspectable public var isPronounced: Bool = false
    
    @IBInspectable public var isEnalable: Bool = false {
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
    
        
        titleLabel?.font = UIFont.systemFont(ofSize: isBig ? 28 : 15, weight: isBig ? .medium : .heavy)
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
            
            if (!isEnabled) {
                layer.borderColor = UIColor.yellow.withAlphaComponent(0.5).cgColor
            } else {
                layer.borderColor = UIColor.yellow.cgColor
            }
        }

        if (!isPronounced) {
            configureForPronounced()
        }
        

    }
    
    func configureForPronounced() {
        backgroundColor = .black
        
        if (isGrayedOut) {
            layer.borderColor = UIColor.darkGray.cgColor
            setTitleColor(UIColor.darkGray, for: .normal)
        } else {
            layer.borderColor = UIColor.lightGray.cgColor
            setTitleColor(UIColor.lightGray, for: .normal)
        }
    
        
    }
    

    
    public override func setTitle(_ title: String?, for state: UIControl.State) {
        let ttl = "   \(title ?? "")   "
        super.setTitle(ttl, for: state)
    }
}
