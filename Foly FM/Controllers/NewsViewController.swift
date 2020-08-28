//
//  NewsViewController.swift
//  Foly FM
//
//  Created by Alain MK on 20/08/2020.
//  Copyright © 2020 Ja'Ch Technologies. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageViewNewsCover: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setGradientBackgroundImageSlider()
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: K.articleCellNibName, bundle: nil), forCellReuseIdentifier: K.articleCellIdentifier)
    }
    
    
    func setGradientBackgroundImageSlider() {
        
        let view = UIView(frame: imageViewNewsCover.frame)
        let colorBottom = UIColor(red: 20.0/255.0, green: 21.0/255.0, blue: 22.0/255.0, alpha: 1.0).cgColor
        let gradient = CAGradientLayer()
        gradient.frame = view.frame
        gradient.colors = [UIColor.clear.cgColor, colorBottom]
        gradient.locations = [0.0, 1.0]
        view.layer.insertSublayer(gradient, at: 0)
        imageViewNewsCover.addSubview(view)
        imageViewNewsCover.bringSubviewToFront(view)
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
