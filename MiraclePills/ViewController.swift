//
//  ViewController.swift
//  MiraclePills
//
//  Created by Corey Young on 6/27/17.
//  Copyright © 2017 Corey Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var miracleText: UILabel!
    @IBOutlet weak var priceText: UILabel!
    @IBOutlet weak var separator: UIView!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressText: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityText: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateText: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryText: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var zipText: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryText.isHidden = true
        countryTextField.isHidden = true
        zipText.isHidden = true
        zipTextField.isHidden = true
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
        countryText.isHidden = false
        countryTextField.isHidden = false
        zipText.isHidden = false
        zipTextField.isHidden = false
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
        pillImage.isHidden = true
        miracleText.isHidden = true
        priceText.isHidden = true
        separator.isHidden = true
        nameText.isHidden = true
        nameTextField.isHidden = true
        addressText.isHidden = true
        addressTextField.isHidden = true
        cityText.isHidden = true
        cityTextField.isHidden = true
        stateText.isHidden = true
        statePickerBtn.isHidden = true
        countryText.isHidden = true
        countryTextField.isHidden = true
        zipText.isHidden = true
        zipTextField.isHidden = true
        buyBtn.isHidden = true
        successImage.isHidden = false
        
    }
}

