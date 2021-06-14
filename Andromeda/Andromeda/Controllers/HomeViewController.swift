//
//  HomeViewController.swift
//  Andromeda
//
//  Created by Mark Henrich on 6/7/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var picOfTheDay: UIImageView!
    @IBOutlet var learnMoreBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picOfTheDay.image = UIImage(named: "test")
        learnMoreBtn.layer.cornerRadius = 15
        learnMoreBtn.clipsToBounds = true
    }
    
    @IBAction func didTapImageView(_ sender: UITapGestureRecognizer) {
        print("tapped")
    }
    
}
