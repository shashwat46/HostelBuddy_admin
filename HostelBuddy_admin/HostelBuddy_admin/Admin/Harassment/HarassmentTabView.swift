//
//  HarassmentTabView.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import SwiftUI

struct HarassmentTabView: View {
    @State private var data = HarassmentGet.harassmentResponseData

    var body: some View {
        List(data, id:\.self){ info in
            VStack(alignment: .leading){
                
                Text("Name: -\(info.name)")
                Text("Room No: - \(info.roomNo)")
                Text("Reg No: - \(info.regNo)")
                Text("Block: - \(info.selectedBlock)")
                Text("Description: - \(info.description)")
                
            }
        }
        .onAppear(perform: {
            Task {
                data = try await HarassmentGet.getHarassmentComplaints()
            }
        })
        .refreshable {
            Task {
                data = try await HarassmentGet.getHarassmentComplaints()
            }
        }

    }
}


//#Preview {
//    HarassmentTabView()
//}
