//
//  TimeChooseViewController.swift
//  EntranceBell
//
//  Created by USER on 2019/02/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit

class TimeChooseViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    let tCC = TimeChooseCell()
    @IBOutlet var ChooseTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ChooseTable.delegate = self
        
        ChooseTable.dataSource = self
    }
    
    let chooseItem = ["5秒後" , "10秒後" , "15秒後" , "30秒後" , "45秒後" , "60秒後"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chooseItem.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = ChooseTable.dequeueReusableCell(withIdentifier: "TimeChooseCell" , for: indexPath)
        cell.textLabel!.text = chooseItem[indexPath.row]
        return cell;
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
