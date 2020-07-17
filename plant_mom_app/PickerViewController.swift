//
//  PickerViewController.swift
//  plant_mom_app
//
//  Created by Olga Capcan on 7/17/20.
//  Copyright © 2020 Xenia Capcan. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    var previousVC = ProfileViewController()
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let plantTypes = ["Succulent", "Cactus", "Spider Plant", "Orchid", "Sunflower", "Ponytail Palm"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return plantTypes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return plantTypes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        previousVC.speciesLabel.text = plantTypes[row]
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
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
