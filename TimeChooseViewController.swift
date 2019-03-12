//
//  TimeChooseViewController.swift
//  EntranceBell
//
//  Created by USER on 2019/02/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit

class TimeChooseViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var ChooseTable: UITableView!
    //選択できる時間
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var toMainButton: UIButton!
    let chooseItem = ["5秒後" , "10秒後" , "15秒後" , "30秒後" , "45秒後" , "60秒後"]
    
    var settingTime = 0
        //settingTime = voidtableView(_tableView: UITableView, didSelectRowAt indexPath : IndexPath)  //(エラー「Expected declaration」）
    
    //24行目のvoidtableViewの引数の処理
    //func ChooseRow(){
        //settingTime = voidtableView(_,didSelectRowAt:IndexPath)
    //}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ChooseTable.delegate = self
        
        ChooseTable.dataSource = self
        //複数選択をできないようにする
        ChooseTable.allowsMultipleSelection = false
        
        //ChooseTable.tableFooterView = UIView(frame: .zero)

        self.view.addSubview(ChooseTable)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chooseItem.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = ChooseTable.dequeueReusableCell(withIdentifier: "TimeChooseCell" , for: indexPath)
        cell.textLabel!.text = chooseItem[indexPath.row]
        return cell;
    }

    //セルが選択された時に呼び出される
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath){
        let cell = ChooseTable.cellForRow(at: indexPath)
        //チェックマークを入れる
        cell?.accessoryType = .checkmark
    }
    //選択されたセルによって設定時間を変える
    func voidtableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)->Int {
        if(indexPath.row == 0){
            settingTime = 5
        }else if(indexPath.row == 1){
            settingTime = 10
        }else if(indexPath.row == 2){
            settingTime = 15
        }else if(indexPath.row == 3){
            settingTime = 30
        }else if(indexPath.row == 4){
            settingTime = 45
        }else if(indexPath.row == 5){
            settingTime = 60
        }
        return settingTime
    }
    //セルの選択が外れた時に呼び出される
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath : IndexPath) {
        let cell = ChooseTable.cellForRow(at: indexPath)
        //チェックマークを外す
        cell?.accessoryType = .none
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
