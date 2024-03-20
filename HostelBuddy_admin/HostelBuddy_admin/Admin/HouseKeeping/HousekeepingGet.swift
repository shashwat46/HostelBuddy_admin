//
//  HousekeepingGet.swift
//  HostelBuddy_admin
//
//  Created by shikhar on 21/03/24.
//

import Foundation
import SwiftUI

struct HousekeepingGet {
    static let housekeepingURL = "https://hostelbuddybackend-hgf5.onrender.com/api/getRoomCleaning"
    
    static var housekeepingResponseData: [HousekeepingModel] = []
    
    
    static func getComplaints() async throws -> [HousekeepingModel] {
        let url = URL(string: housekeepingURL)!
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print((response as? HTTPURLResponse)?.statusCode ?? 200)
            let location = try JSONDecoder().decode([HousekeepingModel].self, from: data)
            return location
            
        } catch {
            print("DEBUG: The Error is: \(error)")
            return housekeepingResponseData
        }
    }
}
