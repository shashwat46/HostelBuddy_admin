//
//  MessComplaintModel.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation

struct MessComplaintModel: Codable, Hashable {
    
    var name: String = ""
    var regNo: String = ""
    var mailVIT: String = ""
    var messType: String = ""
    var messBlock: String = ""
    var description: String = ""
    
    init(name: String, regNo: String, mailVIT: String, messType: String, messBlock: String, description: String) {
        self.name = name
        self.regNo = regNo
        self.mailVIT = mailVIT
        self.messType = messType
        self.messBlock = messBlock
        self.description = description
    }
}
