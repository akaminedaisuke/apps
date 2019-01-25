//
//  ViewController.swift
//  HelloWorld2
//
//  Created by USER on 2019/01/18.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var HelloWorld: UILabel!
    @IBOutlet var mainImage: UIImageView!
    var audioPlayer : AVAudioPlayer!
    
    @IBOutlet var greeting: UIButton!
        func greeting(){
        if let sound = NSDataAsset(name: "line-girl1_line-girl1-konnichiha"){
            player = try?AVAudioPlayer(data: sound.data)
            player?.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
}
