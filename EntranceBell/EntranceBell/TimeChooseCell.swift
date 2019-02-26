//
//  TimeChooseCell.swift
//  EntranceBell
//
//  Created by USER on 2019/02/21.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit

class TimeChooseCell: UITableViewCell {
    //セルの内容を定義するクラス？
    //以下でスイッチの動きを制御するのか？
    let Vc = ViewController()
    @IBOutlet var chooseSwitch: UIView!
    @IBOutlet var label: UILabel!
    @IBAction func TimeSwitch(_ sender: UISwitch) {
        if sender.isOn{
            label.text = "ON"
            Vc.funcTime = 10
        }else{
         label.text = "OFF"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
