//
//  HousekeepingTabView.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import SwiftUI

struct HouseKeepingTabView: View {
    
    @State private var data = HousekeepingGet.housekeepingResponseData

    var body: some View {
        
        List(data, id:\.self) { info in
            VStack(alignment: .leading){
                
                Text("Name: -\(info.name)")
                Text("Room No: - \(info.roomNo)")
                Text("Reg No: - \(info.regNo)")
                Text("Block: - \(info.selectedBlock)")
                Text("Preferred Date: - \(info.date)")
                Text("Preferred Time: - \(info.time)")
                
            }
        }
        .onAppear(perform: {
            Task {
                data = try await HousekeepingGet.getComplaints()
            }
        })
        .refreshable {
            Task {
                data = try await HousekeepingGet.getComplaints()
            }
        }

    }
}

//#Preview {
//    HousekeepingTabView()
//}
