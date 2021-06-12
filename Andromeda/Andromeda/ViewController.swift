//
//  ViewController.swift
//  Andromeda
//
//  Created by Mark Henrich on 6/7/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var picOfTheDay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture of the Day: "
        navigationController?.navigationBar.prefersLargeTitles = true
        
        loadPicOfDay()

    }
    
    func loadPicOfDay() {
        DispatchQueue.global().async { [weak self] in
            
            if let data = try? Data(contentsOf: URL(string: "https://apod.nasa.gov/apod/image/2106/JunSE_DSC_7477b_1024.jpg")!) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.picOfTheDay.image = image
                    }
                }
            }
            
        }
    }


}

