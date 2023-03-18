//
//  SecondViewController.swift
//  SegueProtocol
//
//  Created by Ashwini Somani on 3/16/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    var welcomeName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWelcome.text = "Welcome\(welcomeName)"

        // Do any additional setup after loading the view.
    }
    

   
}
