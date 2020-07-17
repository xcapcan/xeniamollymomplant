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
    
    @IBOutlet weak var speciesLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBAction func waterNotif(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Nourish your baby", message: "Don't forget to water in 1 day!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Got it, hank you!", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Plant.text = selectedPlantBaby.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Done(_ sender: Any) {

    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let addVC = segue.destination as? PickerViewController {
                 addVC.previousVC = self
               }
        
        
    }
  
    
        
        var previousVC = NurseryTableViewController()
        var selectedPlantBaby = plantBaby()
    
}


