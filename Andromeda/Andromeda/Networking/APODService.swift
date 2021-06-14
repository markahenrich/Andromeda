//
//  APODService.swift
//  Andromeda
//
//  Created by Mark Henrich on 6/14/21.
//

import Foundation

// Astronomy Pic of the Day
class APODService {
    
    static let shared = APODService()
    private let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=\(APIKey)")!
    
    private init() {
        // CODE
    }

    func test() {
        print("Test Successful")
    }
}
