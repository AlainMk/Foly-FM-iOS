//
//  ItemArticleCell.swift
//  Foly FM
//
//  Created by Alain MK on 27/08/2020.
//  Copyright © 2020 Ja'Ch Technologies. All rights reserved.
//

import UIKit

class ItemArticleCell: UITableViewCell {
    
    @IBOutlet weak var imageViewCover: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.layer.cornerRadius = 8
        imageViewCover.layer.cornerRadius = 8
        imageViewCover.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
