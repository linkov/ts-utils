//
//  TSButton.swift
//  Transfer
//
//  Created by Alex Linkov on 5/29/21.
//  Copyright © 2021 SDWR. All rights reserved.
//

import UIKit

public enum TSButtonType {
    case deviceConnected,
         deviceDisconnected,
         sliceFxEnabled,
         sliceFxStandard,
         standardLook,
         standardLookInactive,
         yellowTouchUp,
         yellowTouchDown
         
}


public class TSButton: UIButton {
    
    
    var style: TSButtonType = .standardLook
    
    public override func didMoveToSuperview() {
        style(with: style)
    }
    
    public override func setTitle(_ title: String?, for state: UIControl.State) {
        let ttl = "   \(title ?? "")   "
        super.setTitle(ttl, for: state)
    }
    
    public func style(with buttonType: TSButtonType) {
        
        layer.borderWidth = 3
        layer.cornerRadius = 6
    
        if (titleLabel != nil) {
            titleLabel!.font = UIFont.systemFont(ofSize:  15, weight: .heavy)
        }
        

        
        backgroundColor = .black
        setTitleColor(.lightGray, for: .normal)
        
        switch buttonType {
        case .deviceConnected:
            layer.borderColor = UIColor.lightGray.cgColor
        case .deviceDisconnected:
            layer.borderColor = UIColor.clear.cgColor
        case .sliceFxEnabled:
            layer.borderColor = UIColor.white.cgColor
            backgroundColor = .white
            setTitleColor(.black, for: .normal)
        case .sliceFxStandard:
            layer.borderColor = UIColor.white.cgColor
            backgroundColor = .black
            setTitleColor(.white, for: .normal)
        case .standardLook:
            layer.borderColor = UIColor.lightGray.cgColor
            backgroundColor = .black
            setTitleColor(.lightGray, for: .normal)
        case .standardLookInactive:
            layer.borderColor = UIColor.darkGray.cgColor
            backgroundColor = .black
            setTitleColor(.darkGray, for: .normal)
        case .yellowTouchUp:
            backgroundColor = .black
            setTitleColor(.yellow, for: .normal)
            layer.borderColor = UIColor.yellow.cgColor
        case .yellowTouchDown:
            backgroundColor = .yellow
            setTitleColor(.black, for: .normal)
            layer.borderColor = UIColor.yellow.cgColor

       }
        
        self.style = buttonType
    }
}
