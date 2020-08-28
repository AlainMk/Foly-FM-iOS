//
//  Constants.swift
//  Foly FM
//
//  Created by Alain MK on 27/08/2020.
//  Copyright © 2020 Ja'Ch Technologies. All rights reserved.
//

import Foundation


struct K {
    static let appName = "Foly Fm"
    static let articleCellIdentifier = "ArticleCell"
    static let articleCellNibName = "ItemArticleCell"
    
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let primary = "ColorPrimary"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
