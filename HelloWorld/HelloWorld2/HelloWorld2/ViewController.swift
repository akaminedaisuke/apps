//
//  ViewController.swift
//  HelloWorld2
//
//  Created by USER on 2019/01/18.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }
    @IBOutlet var HelloWorld: UILabel!
    @IBOutlet var mainImage: UIImageView!
    @IBAction func kakusu(_ sender: Any) {
        mainImage.isHidden = true;
    }
    @IBAction func hyouji(_ sender: Any) {
        mainImage.isHidden = false;
    }
}
