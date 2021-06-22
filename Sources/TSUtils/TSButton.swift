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
         standardLook,
         yellowTouchUp,
         yellowTouchDown
         
}


public class TSButton: UIButton {
    
    public override func setTitle(_ title: String?, for state: UIControl.State) {
        let ttl = "   \(title ?? "")   "
        super.setTitle(ttl, for: state)
    }
}

extension UIButton {
    
    func style(with buttonType: TSButtonType) {
        
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
        case .standardLook:
            backgroundColor = .black
            setTitleColor(.lightGray, for: .normal)
        case .yellowTouchUp:
            backgroundColor = .black
            setTitleColor(.yellow, for: .normal)
            layer.borderColor = UIColor.yellow.cgColor
        case .yellowTouchDown:
            backgroundColor = .yellow
            setTitleColor(.black, for: .normal)
            layer.borderColor = UIColor.yellow.cgColor

       }
    }
}
