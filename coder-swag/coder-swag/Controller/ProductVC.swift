//
//  ProductVC.swift
//  coder-swag
//
//  Created by Alii Shareef on 8/14/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

       productsCollection.delegate = self
       productsCollection.dataSource = self
    }
    
    func initProduct(cat: Category){
        products = DataService.instance.getProducts(forCategoryTitle: cat.title)
        navigationItem.title = cat.title
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            cell.updateVies(product: products[indexPath.row])
            return cell
        } else {
            return ProductCell()
        }
    }
}
