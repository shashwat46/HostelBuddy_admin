//
//  ComplaintsGet.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation
import SwiftUI

struct ComplaintsGet {
    
    static let complaintURL = "https://hostelbuddybackend-hgf5.onrender.com/api/getComplaint"
    static var responseData: [ComplaintModel] = []
    
    
    static func getComplaints() async throws -> [ComplaintModel] {
        var urlRequest = URLRequest(url: URL(string: complaintURL)!)
        let url = URL(string: complaintURL)!
        urlRequest.httpMethod = "GET"
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print((response as? HTTPURLResponse)?.statusCode ?? 200)
            let location = try JSONDecoder().decode([ComplaintModel].self, from: data)
            return location
            
        } catch {
            print("DEBUG: The Error is: \(error)")
            return responseData
        }
    }
}

