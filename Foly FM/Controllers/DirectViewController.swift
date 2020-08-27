//
//  DirectViewController.swift
//  Foly FM
//
//  Created by Alain MK on 20/08/2020.
//  Copyright © 2020 Ja'Ch Technologies. All rights reserved.
//

import UIKit

class DirectViewController: UIViewController {

    @IBOutlet weak var imageViewCover: UIImageView!
    @IBOutlet weak var textLabelTitle: UILabel!
    @IBOutlet weak var textLabelTime: UILabel!
    @IBOutlet weak var textLabelDesc: UILabel!
    @IBOutlet weak var buttonPlay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewCover.layer.cornerRadius = 10
        buttonPlay.layer.cornerRadius = 0.5 * buttonPlay.bounds.size.width
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 33.0/255.0, green: 150.0/255.0, blue: 243.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 20.0/255.0, green: 21.0/255.0, blue: 22.0/255.0, alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 0.95]
        gradientLayer.frame = self.view.bounds

        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    

}
