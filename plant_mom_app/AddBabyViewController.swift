//
//  AddBabyViewController.swift
//  plant_mom_app
//
//  Created by Olga Capcan on 7/15/20.
//  Copyright © 2020 Xenia Capcan. All rights reserved.
//

import UIKit

class AddBabyViewController: UIViewController {
    
   var previousVC = NurseryTableViewController()
    

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var activeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        let newBaby = plantBaby()
        
        if let titleText = nameTextField.text {
          newBaby.name = titleText
          newBaby.active = activeSwitch.isOn
        }
        
        previousVC.newPlants.append(newBaby)
        previousVC.tableView.reloadData() 
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
