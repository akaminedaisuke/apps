//
//  ViewController.swift
//  EntranceBell
//
//  Created by USER on 2019/01/27.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet var CoName: UILabel!
    @IBOutlet var CoLogo: UIImageView!
    @IBOutlet var message: UILabel!
    var audioPlayer : AVAudioPlayer! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let soundFilePath = Bundle.main.path(forResource: "info-lady1_info-lady1-shibarakuomachi1",ofType:"mp3")!
        let sound:URL = URL(fileURLWithPath: soundFilePath)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: sound , fileTypeHint:nil)
        }catch{
            print("AVAudioPlayerインスタンスでエラー")
        }
        audioPlayer.prepareToPlay()
    }
    @IBAction func sound(_ sender: Any) {
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

