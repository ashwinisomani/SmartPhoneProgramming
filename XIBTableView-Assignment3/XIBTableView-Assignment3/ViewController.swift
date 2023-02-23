//
//  ViewController.swift
//  XIBTableView-Assignment3
//
//  Created by Ashwini Somani on 2/21/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    
    let foodNames = ["Cakes","Dumpling" ,"Noodles" , "Pasta", "salad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

