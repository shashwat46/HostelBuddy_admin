//
//  MessComplaintTabView.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import SwiftUI

struct MessComplaintTabView: View {
    
    @State var data = MessComplaintGet.messComplaintResponseData
    var body: some View {
        List(data, id:\.self){ info in
            VStack(alignment: .leading){
                
                Text("Name: -\(info.name)")
                Text("Reg No: - \(info.regNo)")
                Text("Mess Block: - \(info.messBlock)")
                Text("Type: - \(info.messType)")
                Text("Description: - \(info.description)")
                
            }
        }
        .onAppear(perform: {
            Task {
                data = try await MessComplaintGet.getMessComplaints()
            }
        })
        .refreshable {
            Task {
                data = try await MessComplaintGet.getMessComplaints()
            }
        }
    }
}


//#Preview {
//    MessComplaintTabView()
//}
