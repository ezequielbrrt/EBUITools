//
//  ViewController.swift
//  EBUITools
//
//  Created by ezequielbrrt on 06/19/2019.
//  Copyright (c) 2019 ezequielbrrt. All rights reserved.
//

import UIKit
import EBUITools

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.setRounded()
    }

    
}
