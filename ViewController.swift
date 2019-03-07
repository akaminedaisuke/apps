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
    @IBOutlet var CoLogo: UIImageView!
    @IBOutlet var mainMessage: UILabel!
    @IBOutlet var button: UIButton!
    var lineBreakMode:NSLineBreakMode!
    var audioPlayer : AVAudioPlayer!
    var funcTime : Int = 0//設定画面から時間を制御するために作動時間を変数化
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
        //ボタンの設定
        let rgba =  UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        button.backgroundColor = rgba
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 50.0
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        //音声を再生するための設定
        let soundFilePath = Bundle.main.path(forResource: "info-lady1_info-lady1-shibarakuomachi1",ofType:"mp3")!
        let sound:URL = URL(fileURLWithPath: soundFilePath)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: sound , fileTypeHint:nil)
        }catch{
            print("AVAudioPlayerインスタンスでエラー")
        }
        audioPlayer.prepareToPlay()
    }
    
    //呼び出し（Touchボタン）のアクション
    @IBAction func Touch(_ sender: Any) {
        audioPlayer.currentTime = 0
        audioPlayer.play()
        mainMessage.text = "担当者が参ります 暫くお待ち下さい"
        //Touchボタン押下後、一定時間で元のメッセージへ戻す処理
        
        funcTime = 5 //考え１：初期設定を５秒とする。設定画面のクラスへインスタンスした後、funcTimeを初期化する事で制御できないか？
        //考え２：.now() + 5 の数字の部分を変数で表す事ができないか？そうしないと作動時間を制御できない？
        DispatchQueue.main.asyncAfter(deadline: .now() + 5)
        {
            self.mainMessage.text = "ご来社ありがとうございます。ようこそエヌワンへ！\nご用の方は下のボタンにタッチして下さい。"
        }
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}
