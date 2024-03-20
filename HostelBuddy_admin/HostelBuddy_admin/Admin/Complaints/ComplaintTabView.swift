//
//  ComplaintTabView.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import SwiftUI

struct ComplaintTabView: View {
    @State private var data = ComplaintsGet.responseData
    
    var body: some View {
        List(data, id:\.self) { info in
            VStack(alignment: .leading){
                Text("Name: -\(info.name)")
                Text("Room No: - \(info.roomNo)")
                Text("Room No: - \(info.regNo)")
                Text("Room No: - \(info.selectedBlock)")
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
