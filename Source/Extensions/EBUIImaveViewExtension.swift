//
//  EBUIImaveViewExtension.swift
//  EBUITools
//
//  Created by Ezequiel Barreto on 6/20/19.
//

import Foundation

extension UIImageView {
    
    public func setRounded() {
        self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
        self.layer.masksToBounds = true
    }
}
