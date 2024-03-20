//
//  AdminHandler.swift
//  HostelBuddy_admin
//
//  Created by Shashwat Singh on 19/3/24.
//

import Foundation

struct IssueResponse: Identifiable, Codable {
    let id: String
    let name: String
    let regNo: String
    let selectedBlock: String
    let roomNo: String
    let mailVIT: String
    let issueType: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case regNo
        case selectedBlock
        case roomNo
        case mailVIT
        case issueType
        case description
    }
}



class IssueHandler: ObservableObject {
    @Published var issue: [IssueResponse]?
    
    func fetchIssue() {
        guard let url = URL(string: "https://hostelbuddybackend-hgf5.onrender.com/api/getComplaint") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode([IssueResponse].self, from: data)
                DispatchQueue.main.async {
                    self.issue = decodedResponse
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }

        }.resume()
    }
}




