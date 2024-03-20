//
//  ContentView.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ComplaintTabView()
                    .navigationBarTitle("Complaints")
            }
            .tabItem {
                Image(systemName: "note")
                Text("Complaints")
            }

            NavigationView {
                HouseKeepingTabView()
                    .navigationBarTitle("House Keeping")
            }
            .tabItem {
                Image(systemName: "trash")
                Text("House Keeping")
            }
            NavigationView {
                MessComplaintTabView()
                    .navigationBarTitle("Mess Complaints")
            }
            .tabItem {
                Image(systemName: "fork.knife.circle")
                Text("Mess Complaints")
            }
            NavigationView {
                HarassmentTabView()
                    .navigationBarTitle("Harassment")
            }
            .tabItem {
                Image(systemName: "exclamationmark.triangle")
                Text("Harassment")
            }
        }
    }
}

#Preview {
    ContentView()
}
