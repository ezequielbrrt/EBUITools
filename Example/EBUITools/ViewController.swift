//
//  ViewController.swift
//  EBUITools
//
//  Created by ezequielbtc on 06/19/2019.
//  Copyright (c) 2019 ezequielbtc. All rights reserved.
//

import UIKit
import EBUITools

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        containerView.setGradient(color1: UIColor.init(hexString: "4fc64b"), color2: UIColor.init(hexString: "1af4a4"))
        containerView.shakeAnimation(moveScale: 2, minimumAlpha: 0.5, duration: 3)
        
    }

    
}



