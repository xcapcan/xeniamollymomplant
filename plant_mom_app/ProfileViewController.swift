//
//  ProfileViewController.swift
//  plant_mom_app
//
//  Created by Molly Dorgan on 7/16/20.
//  Copyright © 2020 Xenia Capcan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var Plant: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Plant.text = selectedPlantBaby.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Done(_ sender: Any) {

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
        
        var previousVC = NurseryTableViewController()
        var selectedPlantBaby = plantBaby()
    
}


