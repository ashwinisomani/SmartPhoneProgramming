//
//  ViewController.swift
//  RestaurantApp-Assignment2
//
//  Created by Ashwini Somani on 2/17/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    
    
    @IBOutlet weak var tableViewTop: UITableView!
    
    @IBOutlet weak var tableViewBottom: UITableView!
    
    let restaurants = ["Zaika","Din Thai Fung","Inchin Bamboo","Pink Door"]
    let foods = [["Mushroom Steak","Kale Chaat","Chilli Chicken","Paneer Tikka", "Pav Bhaji"],
                ["Vegan Dumpling","Chicken Dumplings","Pork Buns","Spicy Wontons" , "String Beans"],
                ["Hot & Sour","Manchurian","Tofu Salad","Hakka Noodles" , "Latt Mai Paneer"],
                ["Risotto","Alfredo Pasta","Spaghetti Pasta","Panino Americano" , "Cheese Board"]]
    
    var foodItems : [String]  = []
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewTop{
            return restaurants.count
        }
        else{
            return foodItems.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tableViewTop{
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
             cell.textLabel?.text = restaurants[indexPath.row]
             return cell
               }
        
        else{
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
              cell.textLabel?.text = foodItems[indexPath.row]
              return cell
               }
               
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if tableView == tableViewTop{
                
                let selectRow = indexPath.row
                
                foodItems = foods[selectRow]
         
                self.tableViewBottom.reloadData()
            }
        }

    }
