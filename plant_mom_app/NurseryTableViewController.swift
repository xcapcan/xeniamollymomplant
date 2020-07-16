//
//  ToDoTableViewController.swift
//  plant_mom_app
//
//  Created by Olga Capcan on 7/15/20.
//  Copyright © 2020 Xenia Capcan. All rights reserved.
//

import UIKit

class NurseryTableViewController: UITableViewController {

    var newPlants : [plantBaby] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newPlants = addNewPlant()
    }

   func addNewPlant() -> [plantBaby] {

     let succulent = plantBaby()
     succulent.name = "Sonoma"
     succulent.active = true

     let sunflower = plantBaby()
     sunflower.name = "Heather"
     // important is set to false by default

     return [succulent, sunflower]
   }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newPlants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         let newPlant = newPlants[indexPath.row]
        
        if newPlant.active {
          cell.textLabel?.text = "🌱" + newPlant.name
        } else {
          cell.textLabel?.text = newPlant.name
        }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

 


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? AddBabyViewController {
           addVC.previousVC = self
         }
         if let completeVC = segue.destination as? ProfileViewController {
            if let newPlant = sender as? plantBaby {
              completeVC.selectedPlantBaby = newPlant
              completeVC.previousVC = self
            }
          }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let newPlant = newPlants[indexPath.row]

      performSegue(withIdentifier: "moveToProfile", sender: newPlant)
    }
    

}
