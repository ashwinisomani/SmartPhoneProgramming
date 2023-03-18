//
//  ViewController.swift
//  SegueProtocol
//
//  Created by Ashwini Somani on 3/16/23.
//


import UIKit


//var welcomeName = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            guard let name  = txtName.text else {return}
            secondVC.welcomeName = name
        }
    }
    
}
