//
//  MessComplaintGet.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation
import SwiftUI

struct MessComplaintGet {
    static let messComplaintURL = "https://hostelbuddybackend-hgf5.onrender.com/api/getMessIssue"
    
    static var messComplaintResponseData: [MessComplaintModel] = []
    
    
    static func getMessComplaints() async throws -> [MessComplaintModel] {
        let url = URL(string: messComplaintURL)!
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print((response as? HTTPURLResponse)?.statusCode ?? 200)
            let location = try JSONDecoder().decode([MessComplaintModel].self, from: data)
            return location
            
        } catch {
            print("DEBUG: The Error is: \(error)")
            return messComplaintResponseData
        }
    }
}
