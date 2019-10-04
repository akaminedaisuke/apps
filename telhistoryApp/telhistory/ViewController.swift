//
//  ViewController.swift
//  telhistory
//
//  Created by USER on 2019/10/03.
//  Copyright © 2019 n1system. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var entryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let realm = try! Realm()
        
    }
    //登録ボタンの処理
    @IBAction func entryButton(_ sender: Any) {
        if(register_d.text = ""){
            let alertController = UIAlertController(title:"必須項目です", message: "日付を入力してください",preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler:nil))
            present(alertController,animated: true,completion: nil)
        }
        else if(register_t.text = ""){
            let alertController = UIAlertController(title:"必須項目です", message: "時刻を入力してください",preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler:nil))
            present(alertController,animated: true,completion: nil)
        }
        else if(content.text = ""){
            let alertController = UIAlertController(title:"必須項目です", message: "伝言内容を入力してください",preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler:nil))
            present(alertController,animated: true,completion: nil)
        }
        else if(recepter.text = ""){
            let alertController = UIAlertController(title:"必須項目です", message: "受付者を入力してください",preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler:nil))
            present(alertController,animated: true,completion: nil)
        }
        else{
            let rireki = telhistoryModel()
            rireki.register_d = register_d.text
            rireki.register_t = register_t.text
            rireki1.to_name = to_name.text
            rireki1.com_name = com_name.text
            rireki1.com_member = com_member.text
            rireki1.content = content.text
            rireki1.recepter = recepter.text
        }
    }
}
