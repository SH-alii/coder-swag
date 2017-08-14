//
//  ViewController.swift
//  coder-swag
//
//  Created by Alii Shareef on 8/14/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoryTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.updateView(category: DataService.instance.getCategory()[indexPath.row])
            return cell
        } else {
            return CategoryCell()
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cat = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: cat)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let productVC = segue.destination as? ProductVC {
         let barbtn = UIBarButtonItem()
          barbtn.title = ""
       navigationItem.backBarButtonItem = barbtn
          assert(sender as? Category != nil)
           productVC.initProduct(cat: sender as! Category)
 
        }
    }
    
    
}

