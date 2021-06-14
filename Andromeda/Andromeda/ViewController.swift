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
        
        self.navigationItem.title = "Picture of the Day: "
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

