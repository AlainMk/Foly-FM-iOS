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
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    

}
