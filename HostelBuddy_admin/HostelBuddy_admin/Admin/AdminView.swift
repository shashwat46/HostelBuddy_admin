//import SwiftUI
//
//struct AdminView: View {
//    var body: some View {
//        
//    }
//}
//
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
