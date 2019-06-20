//
//  EBUIImageExtension.swift
//  EBUITools
//
//  Created by Ezequiel Barreto on 6/19/19.
//

import UIKit


extension UIImage {
    
    public func roundImage(cornerRadius: Float){
        let imageView = UIImageView(image: self)
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, 1.0);
        UIBezierPath(roundedRect: imageView.bounds, cornerRadius:CGFloat(cornerRadius)).addClip()
        self.draw(in: imageView.bounds)
        imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext()
    }
}

