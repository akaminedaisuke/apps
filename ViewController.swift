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
    var audioPlayer
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var HelloWorld: UILabel!
    @IBOutlet var mainImage: UIImageView!
    //@IBOutlet var greeting: UIButton!
    let audioPath = Bundle.main.path(forResouce : "line-girl1_line-girl1-konnichiha1" , ofType : "mp3")!
    let audioUrl = URL(fileURLWithPath : audioPath)
        
    var audioError: NSError?
        do{
            audioPlayer =  try AVAudioPlayer(contentsOf : audioUrl)
        }catch let error as NSError{
            audioError = error
            audioPlayer = nil
    }
    
    if let error = audioError{
        print("Error／（error.localizedDiscription）")
    }
    
    audioPlayer.delegate = self
    audioPlayer.prepareToPlay()
    
    @IBAction func greeting(_ sender: Any) {
        if(audioPlayer.isPlaying){
            audioPlayer.stop()
            greeting.setTitle("stop" , for: UIControlstate())
        }
        else{
            audioPlayer.play()
            button.setTitle("play" , for: UIControlstate())
        }
    }
}
