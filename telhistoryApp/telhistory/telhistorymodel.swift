//
//  telhistorymodel.swift
//  telhistory
//
//  Created by USER on 2019/10/03.
//  Copyright © 2019 n1system. All rights reserved.
//

import Foundation
import RealmSwift
//テーブルを管理するモデル
class telhistoryModel: Object{
    //日付
    @objc dynamic var register_d: NSDate?
    //時間
    @objc dynamic var register_t: NSDate
    //宛先
    @objc dynamic var to_name: String?
    //会社名
    @objc dynamic var com_name: String?
    //担当者
    @objc dynamic var com_member: String?
    //内容
    @objc dynamic var content: String?
    //受付者
    @objc dynamic var recepter: String?
}
