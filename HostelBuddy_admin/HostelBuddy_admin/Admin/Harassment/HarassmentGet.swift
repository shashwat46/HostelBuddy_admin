//
//  HarassmentGet.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation

struct HarassmentGet {
    static let harassmentURL = "https://hostelbuddybackend-hgf5.onrender.com/api/getHarassment"
    
    static var harassmentResponseData: [HarassmentModel] = []
    
    
    static func getHarassmentComplaints() async throws -> [HarassmentModel] {
        let url = URL(string: harassmentURL)!
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print((response as? HTTPURLResponse)?.statusCode ?? 200)
            let location = try JSONDecoder().decode([HarassmentModel].self, from: data)
            return location
            
        } catch {
            print("DEBUG: The Error is: \(error)")
            return harassmentResponseData
        }
    }
}
