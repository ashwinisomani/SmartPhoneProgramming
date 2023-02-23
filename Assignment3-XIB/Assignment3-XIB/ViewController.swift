//
//  ViewController.swift
//  Assignment3-XIB
//
//  Created by Ashwini Somani on 2/22/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

//food item names
    let foodNames = ["Cakes","Dumpling" ,"Noodles" , "Pasta", "salad"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imageContainer.image = UIImage(named: "\(foodNames[indexPath.row])")
        cell.lblImage.text = foodNames[indexPath.row]
        return cell
        
        
        
    }
    
    

}

