//
//  ComplaintModel.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation
import SwiftUI

struct ComplaintModel: Codable, Hashable {

    var name: String = ""
    var regNo: String = ""
    var roomNo: String = ""
    var mailVIT: String = ""
    var selectedBlock: String = ""
    var issueType: String = ""
    var description: String = ""
    
    init(name: String, regNo: String, roomNo: String, mailVIT: String, selectedBlock: String, issueType: String, description: String) {
        self.name = name
        self.regNo = regNo
        self.roomNo = roomNo
        self.mailVIT = mailVIT
        self.selectedBlock = selectedBlock
        self.issueType = issueType
        self.description = description
    }
}
