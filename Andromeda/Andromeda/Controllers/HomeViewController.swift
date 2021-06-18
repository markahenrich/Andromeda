//
//  HomeViewController.swift
//  Andromeda
//
//  Created by Mark Henrich on 6/7/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var picOfTheDay: UIImageView!
    @IBOutlet var apodTitle: UILabel!
    @IBOutlet var apodDate: UILabel!
    @IBOutlet var apodExplanation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apod = APODService.shared.getAPOD()
        let image = APODService.shared.loadImage(apod: apod)
        picOfTheDay.image = image
        apodTitle.text = apod.title
        apodDate.text = apod.date
        apodExplanation.text = apod.explanation
        
    }
}
