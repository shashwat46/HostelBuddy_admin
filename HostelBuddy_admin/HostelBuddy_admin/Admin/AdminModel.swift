//
//  AdminModel.swift
//  HostelBuddy_admin
//
//  Created by Shashwat Singh on 20/3/24.
//

import Foundation

// Enum representing blocks
enum Blocks: String, CaseIterable, Identifiable {
    case A,B,C,D,E,F,G,H,J,K,L,M,N,P,Q,R,S,T
    var id: Self { self }
}

// Model representing an issue with title, description, and block
struct Issue {
    let fullName: String
    let regNo: String
    let block: String
    let roomNo: String
    let mailId: String
    let issueType: String
    let description: String
}




