//
//  ComplaintTabView.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import SwiftUI

struct ComplaintTabView: View {
    @State private var data = ComplaintsGet.complaintResponseData
    
    var body: some View {
        List(data, id:\.self) { info in
            VStack(alignment: .leading){
                
                Text("Name: -\(info.name)")
                Text("Room No: - \(info.roomNo)")
                Text("Reg No: - \(info.regNo)")
                Text("Block: - \(info.selectedBlock)")
                Text("Issue Type: -\(info.issueType)")
                Text("Description: -\(info.description)")
                
            }
        }
        .onAppear(perform: {
            Task{
                data = try await ComplaintsGet.getComplaints()
            }
        })
        .refreshable {
            Task{
                data = try await ComplaintsGet.getComplaints()
            }
        }

    }
}

//#Preview {
//    ComplaintTabView()
//}
