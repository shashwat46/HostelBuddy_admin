//
//  AdminView.swift
//  HostelBuddy_admin
//
//  Created by Shashwat Singh on 19/3/24.
//

import SwiftUI

enum Blocks: String, CaseIterable, Identifiable {
    case A,B,C,D,E,F,G,H,J,K,L,M,N,P,Q,R,S,T
    var id: Self { self }
}

struct Issue: Identifiable {
    let id: Int
    let title: String
    let description: String
    let block: Blocks
}


struct AdminView: View {
    
    
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
                .navigationBarTitle("Mess Complaints") // Title for the tab
                       }
                .tabItem {
                    Image(systemName: "fork.knife.circle")
                        Text("Mess Complaints")
                    }
                       
                    NavigationView {
                        HarassmentTabView()
                               .navigationBarTitle("Harassment") // Title for the tab
                    }
                       .tabItem {
                           Image(systemName: "exclamationmark.triangle")
                           Text("Harasssment")
                       }
        }
    }
}

struct ComplaintTabView: View {
    
    @State private var selectedBlock: Blocks = .A
    @State private var selectedIssue: Issue? = nil
    
    var body: some View {
        VStack{
            
                
                List{
                    Picker("Hostel Block", selection: $selectedBlock) {
                        ForEach(Blocks.allCases) { block in
                            Text(block.rawValue.capitalized)
                        }
                    }
                }
                .frame(height : 100)
     
                
            IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
                
        }
        .sheet(item: $selectedIssue) { issue in // Present a sheet with issue description
            IssueDetailView(issue: issue)
        }
        
    }
}


    
    
    struct HouseKeepingTabView: View {
        
        @State private var selectedBlock: Blocks = .A
        @State private var selectedIssue: Issue? = nil
        var body: some View {
            VStack{
                List {
                    Picker("Hostel Block", selection: $selectedBlock) {
                        ForEach(Blocks.allCases) { block in
                            Text(block.rawValue.capitalized)
                        }
                    }
                    
                }
                .frame(height : 100)
                
                IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
            }
            .sheet(item: $selectedIssue) { issue in // Present a sheet with issue description
                IssueDetailView(issue: issue)
            }
            
        }
    }
    
    struct MessComplaintTabView: View {
        
        @State private var selectedBlock: Blocks = .A
        @State private var selectedIssue: Issue? = nil
        var body: some View {
            VStack{
                List {
                    Picker("Hostel Block", selection: $selectedBlock) {
                        ForEach(Blocks.allCases) { block in
                            Text(block.rawValue.capitalized)
                        }
                    }
                    
                }
                .frame(height : 100)
                
                IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
            }
            .sheet(item: $selectedIssue) { issue in // Present a sheet with issue description
                IssueDetailView(issue: issue)
            }
            
        }
    }
    
    
    struct HarassmentTabView: View {
        
        @State private var selectedBlock: Blocks = .A
        @State private var selectedIssue: Issue? = nil
        
        var body: some View {
            VStack{
                List {
                    Picker("Hostel Block", selection: $selectedBlock) {
                        ForEach(Blocks.allCases) { block in
                            Text(block.rawValue.capitalized)
                        }
                    }
                    
                }
                .frame(height : 100)
                
                IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
            }
            .sheet(item: $selectedIssue) { issue in // Present a sheet with issue description
                IssueDetailView(issue: issue)
            }
            
        }
    }
    struct IssueListView: View {
        let block: Blocks
        @Binding var selectedIssue: Issue? // Binding to track the selected issue
        
        var body: some View {
            ScrollView {
                ForEach(1..<6) { issueIndex in
                    Button(action: {
                        self.selectedIssue = Issue(id: issueIndex, title: "Issue \(issueIndex)", description: "Description for Issue \(issueIndex) in \(block.rawValue)", block: self.block)
                    }) {
                        Text("Issue \(issueIndex) for \(block.rawValue)")
                    }
                }
            }
        }
    }
    struct IssueDetailView: View {
        let issue: Issue
        
        var body: some View {
            VStack {
                Text(issue.title)
                    .font(.title)
                    .padding()
                
                Text(issue.description)
                    .font(.body)
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle(issue.title)
        }
    }

    
    struct Previews: PreviewProvider {
        static var previews: some View {
            AdminView()
        }
    }
    

