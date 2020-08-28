//
//  NewsViewController.swift
//  Foly FM
//
//  Created by Alain MK on 20/08/2020.
//  Copyright © 2020 Ja'Ch Technologies. All rights reserved.
//

import UIKit
import ParallaxHeader

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = #colorLiteral(red: 0.07829812914, green: 0.08230210096, blue: 0.08646025509, alpha: 1)
        tableView.dataSource = self
        tableView.register(UINib(nibName: K.articleCellNibName, bundle: nil), forCellReuseIdentifier: K.articleCellIdentifier)
        
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "image_16")
//        imageView.contentMode = .scaleAspectFill
//
//        tableView.parallaxHeader.view = imageView
//        tableView.parallaxHeader.height = 400
//        tableView.parallaxHeader.minimumHeight = 0
//        tableView.parallaxHeader.mode = .topFill
    }
    
    
    func gradientImageSlider() {
        
//        let colorTop =  UIColor(red: 33.0/255.0, green: 150.0/255.0, blue: 243.0/255.0, alpha: 1.0).cgColor
//        let colorBottom = UIColor(red: 20.0/255.0, green: 21.0/255.0, blue: 22.0/255.0, alpha: 1.0).cgColor
//
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [colorTop, colorBottom]
//        gradientLayer.locations = [0.0, 0.1]
//        gradientLayer.frame = tableView.parallaxHeader.view.bounds
        tableView.parallaxHeader.view.backgroundColor = .red
    }
    
}

extension NewsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.articleCellIdentifier, for: indexPath) as! ItemArticleCell
        return cell
    }
    
    
}
