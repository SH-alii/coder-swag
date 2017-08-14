//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Alii Shareef on 8/14/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!

    func updateView(category: Category){
        backgroundImg.image = UIImage(named: category.imageName)
        titleLbl.text = category.title
    }

}
