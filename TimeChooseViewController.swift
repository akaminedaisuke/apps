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
    
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var toMainButton: UIButton!
    
    let chooseItem = [ 5 , 10 , 15 , 30 , 45 , 60 ]
    
    static var indexElement = 0
    
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
        var elementOfText : [String] = []
        elementOfText = chooseItem.map{String($0) + "秒"}
        let cell: UITableViewCell = ChooseTable.dequeueReusableCell(withIdentifier: "TimeChooseCell" , for: indexPath)
        cell.textLabel!.text = elementOfText[indexPath.row]
        return cell;
    }
    //セルが選択された時に呼び出される
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath){
        let cell = ChooseTable.cellForRow(at: indexPath)
        TimeChooseViewController.indexElement = chooseItem[indexPath.row]
        //チェックマークを入れる
        cell?.accessoryType = .checkmark
    }
    //セルの選択が外れた時に呼び出される
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath : IndexPath) {
        let cell = ChooseTable.cellForRow(at: indexPath)
        //チェックマークを外す
        cell?.accessoryType = .none
    }
    
    //func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //var elementOfText : [String] = []
        //elementOfText = chooseItem.map{String($0) + "秒"}
        //let cell: UITableViewCell = ChooseTable.dequeueReusableCell(withIdentifier: "TimeChooseCell" , for: indexPath)
        //cell.textLabel!.text = elementOfText[indexPath.row]
        //if(TimeChooseViewController.indexElement == chooseItem[indexPath.row]){
            //cell.accessoryType = .checkmark
        //}else if(TimeChooseViewController.indexElement < 0){
            //cell.accessoryType = .none
        //}
        //return cell;
    //}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
