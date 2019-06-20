//
//  EBTools.swift
//  EBUITools
//
//  Created by Ezequiel Barreto on 6/19/19.
//

import Foundation


public class EBUItools: NSObject{
    static let screenHeight = Int(UIScreen.main.bounds.size.height)
    
    public class func isIPad() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    public class func isIPhoneSE() -> Bool {
        return (screenHeight == 568)
    }
    
    public class func isIPhone8() -> Bool {
        return (screenHeight == 667)
    }
    
    public class func isIPhone8Plus() -> Bool {
        return (screenHeight == 736)
    }
    
    public class func isIPhoneXs() -> Bool {
        return (screenHeight == 812)
    }
    
    public class func isPhoneXsMax() -> Bool {
        return (screenHeight == 896)
    }
    
    public class func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
   
}
