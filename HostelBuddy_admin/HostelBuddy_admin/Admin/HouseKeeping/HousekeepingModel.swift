//
//  HousekeepingModel.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation
import SwiftUI

struct HousekeepingModel: Codable, Hashable {

    var name: String = ""
    var regNo: String = ""
    var roomNo: String = ""
    var mailVIT: String = ""
    var selectedBlock: String = ""
    var date: String = ""
    var time: String = ""
    
    init(name: String, regNo: String, roomNo: String, mailVIT: String, selectedBlock: String, date: String, time: String) {
        self.name = name
        self.regNo = regNo
        self.roomNo = roomNo
        self.mailVIT = mailVIT
        self.selectedBlock = selectedBlock
        self.date = date
        self.time = time
    }
    
}
