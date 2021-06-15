//
//  HomeViewController.swift
//  Andromeda
//
//  Created by Mark Henrich on 6/7/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var picOfTheDay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apod = APODService.shared.getAPOD()
        let image = APODService.shared.loadImage(apod: apod)
        picOfTheDay.image = image
        
    }
    
    @IBAction func didTapImageView(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = UIColor.black
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        newImageView.contentMode = .scaleAspectFill
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    @objc func dismissFullscreenImage(sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
}
