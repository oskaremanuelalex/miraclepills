//
//  ViewController.swift
//  MiraclePill
//
//  Created by Oskar Alex on 2017-04-27.
//  Copyright © 2017 Oskar Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var textFieldCountry: UITextField!
    @IBOutlet weak var labelZipCode: UILabel!
    @IBOutlet weak var textFieldZipCode: UITextField!
    
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
   
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        labelCountry.isHidden = true
        textFieldCountry.isHidden = true
        labelZipCode.isHidden = true
        textFieldZipCode.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    performSegue(withIdentifier: "mysegway1", sender: sender)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        labelCountry.isHidden = false
        textFieldCountry.isHidden = false
        labelZipCode.isHidden = false
        textFieldZipCode.isHidden = false

    }
}




