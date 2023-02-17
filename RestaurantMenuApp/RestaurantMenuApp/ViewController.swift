//
//  ViewController.swift
//  RestaurantMenuApp
//
//  Created by Ashwini Somani on 2/14/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    let resturants = ["Subway", "Din Tai Fung", "Cookie Shop", "Coffee Shop"]
    
    let foods =  [["The MexiCali Sandwich", "Veggie Delite Sandwich", "Oven-Roasted Turkey Sandwich", "Sweet Onion Chicken Teriyaki Sandwich"],
                  ["Shrimp Fried Rice", "Vegan Dumplings", "Hot & Soup Soup", "Red Bean Bun", "Shaomai"],
                  ["Double Chocolate Cookie", "Milk Cookie", "Sweet & Salty Cookie", "White Chocolate Cookie"],
                  ["Latte", "Caramel Macchiato", "Cappuccino", "Americano", "Espresso", "Black Tea Lemonade"]]
    
    // varibale to show in the bottom table view
    var foodItems : [String]  = []

    @IBOutlet weak var tableViewTop: UITableView!
    @IBOutlet weak var tableViewBottom: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewTop{
                   return resturants.count
               }else{
                   return foodItems.count
               }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // operations in the top table view
               if tableView == tableViewTop{
                   let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantcell", for: indexPath)
                   
                   cell.textLabel?.text = resturants[indexPath.row]
                   
                   return cell
               }else{  // operations in the bottom table view
                   let cell = tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath)
                   
                   cell.textLabel?.text = foodItems[indexPath.row]
                   
                   return cell
               }
             }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if tableView == tableViewTop{
                
                // get the selected row
                let selectRow = indexPath.row
                
                // update the food items data
                foodItems = foods[selectRow]
                
                // reload the bottom table view
                self.tableViewBottom.reloadData()
            }
        }

    }
