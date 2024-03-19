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

struct AdminView: View {
    
    
    var body: some View {
        TabView {
            ComplaintTabView()
                .tabItem {
                    Image(systemName: "note")
                    Text("Complaints")
                }
            HouseKeepingTabView()
                .tabItem {
                    Image(systemName: "trash")
                    Text("House Keeping")
                }
            MessComplaintTabView()
                .tabItem{
                    Image(systemName: "fork.knife.circle")

                    Text("Mess Complaints")
                }
            HarassmentTabView()
                .tabItem {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Harasssment")
                }
        }
    }
}

struct ComplaintTabView: View {
    
    @State private var selectedBlock: Blocks = .A
    
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
     
                
            IssueListView(block: selectedBlock)
                
            
            
            
        }
        
        
    }
}

    
    
    struct HouseKeepingTabView: View {
        
        @State private var selectedBlock: Blocks = .A
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
                
                IssueListView(block: selectedBlock)
            }
            
        }
    }
    
    struct MessComplaintTabView: View {
        
        @State private var selectedBlock: Blocks = .A
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
                
                IssueListView(block: selectedBlock)
            }
            
        }
    }
    
    
    struct HarassmentTabView: View {
        
        @State private var selectedBlock: Blocks = .A
        
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
                
                IssueListView(block: selectedBlock)
            }
            
        }
    }
    struct IssueListView: View {
        let block: Blocks
        
        var body: some View {
            List {
                
                ForEach(1..<6) { issueIndex in
                    Text("Issue \(issueIndex) for \(block.rawValue)")
                }
            }
        }
    }
    
    struct Previews: PreviewProvider {
        static var previews: some View {
            AdminView()
        }
    }
    

