//
//  HarassmentModel.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation

struct HarassmentModel: Codable, Hashable {
    
    var name: String = ""
    var regNo: String = ""
    var roomNo: String = ""
    var mailVIT: String = ""
    var selectedBlock: String = ""
    var description: String = ""
    
    init(name: String, regNo: String, roomNo: String, mailVIT: String, selectedBlock: String, description: String) {
        self.name = name
        self.regNo = regNo
        self.roomNo = roomNo
        self.mailVIT = mailVIT
        self.selectedBlock = selectedBlock
        self.description = description
    }
}
