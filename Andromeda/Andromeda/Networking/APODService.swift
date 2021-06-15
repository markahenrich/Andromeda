//
//  APODService.swift
//  Andromeda
//
//  Created by Mark Henrich on 6/14/21.
//

import Foundation
import UIKit

// Astronomy Pic of the Day
class APODService {
    
    static let shared = APODService()
    private let url = "https://api.nasa.gov/planetary/apod?api_key=\(APIKey)"
    
    private init() {
        // CODE
    }

    func test() {
        print("Test Successful")
    }
    
    func getAPOD() -> APOD {
        var apodReturn: APOD?
        
        if let url = URL(string: url) {
            if let data = try? Data(contentsOf: url) {
                let decoder = JSONDecoder()
                if let apod = try? decoder.decode(APOD.self, from: data) {
                    apodReturn = apod
                }
            }
        }
        
        return apodReturn ?? APOD(title: "Error", explanation: "", date: "", url: "test")
    }
    
    func loadImage(apod: APOD) -> UIImage {
        guard let url = URL(string: apod.url) else { return UIImage(named: "test")! }
        let imageData = try? Data(contentsOf: url)
        guard let image = UIImage(data: imageData!) else { return UIImage(named: "test")!}
        
        return image
    }
    
}
