//
//  File.swift
//  
//
//  Created by Alex Linkov on 6/22/21.
//

import Foundation
import UIKit

public enum TSButtonType {
    case deviceConnected,
         deviceDisconnected,
         sliceFxEnabled,
         standardLook,
         yellowTouchUp,
         yellowTouchDown
         
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
