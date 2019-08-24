//
//  BaseButton.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/25/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class BaseButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    #if !TARGET_INTERFACE_BUILDER
    override init(frame:CGRect){super.init(frame:frame);layout()}
    required init?(coder aDecoder:NSCoder){super.init(coder:aDecoder);layout()}
    #endif
    
    override func prepareForInterfaceBuilder(){super.prepareForInterfaceBuilder();layout()}
    
    private func layout() {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
    }
    
}

