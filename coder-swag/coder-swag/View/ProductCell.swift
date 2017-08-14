//
//  ProductCell.swift
//  coder-swag
//
//  Created by Alii Shareef on 8/14/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!
    
    
    func updateVies(product: Product){
        productLbl.text = product.title
        productImg.image = UIImage(named: product.imageName)
        productPriceLbl.text = product.price
        
    }
}
