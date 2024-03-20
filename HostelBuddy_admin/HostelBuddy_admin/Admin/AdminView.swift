//import SwiftUI
//
//struct AdminView: View {
//    var body: some View {
//        
//    }
//}
//
//
//struct HouseKeepingTabView: View {
//    @StateObject private var issueHandler = IssueHandler()
//    @State private var selectedBlock: Blocks = .A
//    @State private var selectedIssue: IssueResponse? = nil
//    @State private var isShowingIssueDetails = false
//
//    var body: some View {
//        VStack{
//            List {
//                Picker("Hostel Block", selection: $selectedBlock) {
//                    ForEach(Blocks.allCases) { block in
//                        Text(block.rawValue.capitalized)
//                    }
//                }
//            }
//            .frame(height : 100)
//
//            IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
//        }
//        .sheet(isPresented: $isShowingIssueDetails) {
//                    if let issue = selectedIssue {
//                        IssueDetailView(issue: issue)
//                    }
//        }
//        .onAppear {
//            issueHandler.fetchIssue()
//        }
//
//    }
//}
//
//struct MessComplaintTabView: View {
//    @StateObject private var issueHandler = IssueHandler()
//    @State private var selectedBlock: Blocks = .A
//    @State private var selectedIssue: IssueResponse? = nil
//    @State private var isShowingIssueDetails = false
//
//    var body: some View {
//        VStack{
//            List {
//                Picker("Hostel Block", selection: $selectedBlock) {
//                    ForEach(Blocks.allCases) { block in
//                        Text(block.rawValue.capitalized)
//                    }
//                }
//            }
//            .frame(height : 100)
//
//            IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
//        }
//        .sheet(isPresented: $isShowingIssueDetails) {
//                    if let issue = selectedIssue {
//                        IssueDetailView(issue: issue)
//                    }
//        }
//        .onAppear {
//            issueHandler.fetchIssue()
//        }
//
//    }
//}
//
//struct HarassmentTabView: View {
//    @StateObject private var issueHandler = IssueHandler()
//    @State private var selectedBlock: Blocks = .A
//    @State private var selectedIssue: IssueResponse? = nil
//    @State private var isShowingIssueDetails = false
//
//    var body: some View {
//        VStack{
//            List {
//                Picker("Hostel Block", selection: $selectedBlock) {
//                    ForEach(Blocks.allCases) { block in
//                        Text(block.rawValue.capitalized)
//                    }
//                }
//            }
//            .frame(height : 100)
//
//            IssueListView(block: selectedBlock , selectedIssue: $selectedIssue)
//        }
//        .sheet(isPresented: $isShowingIssueDetails) {
//                    if let issue = selectedIssue {
//                        IssueDetailView(issue: issue)
//                    }
//        }
//        .onAppear {
//            issueHandler.fetchIssue()
//        }
//
//    }
//}
//
//struct IssueListView: View {
//    let block: Blocks
//    @Binding var selectedIssue: IssueResponse? // Binding to track the selected issue
//
//    var body: some View {
//        ScrollView {
//            if let issue = selectedIssue {
//                VStack {
//                    
//                    Text("Title: \(issue.regNo)")
//                    Text("Description: \(issue.regNo)")
//                }
//            } else {
//                Text("No issue selected")
//            }
//        }
//    }
//}
//
//struct IssueDetailView: View {
//    let issue: IssueResponse
//
//    var body: some View {
//        VStack {
//            Text("Title: \(issue.regNo)")
//            Text("Description: \(issue.regNo)")
//        }
//        .navigationBarTitle(issue.regNo)
//    }
//}
//
//struct MyPreviewProvider_Previews: PreviewProvider {
//    static var previews: some View {
//        AdminView()
//    }
//}
//
//
