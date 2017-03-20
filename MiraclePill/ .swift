//
//  ViewController.swift
//  MiraclePill
//
//  Created by Elias Myronidis on 18/3/17.
//  Copyright © 2017 eliamyro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var miracleImg: UIImageView!
    @IBOutlet weak var miracleTxt: UILabel!
    @IBOutlet weak var priceTxt: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTxt: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTxt: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTxt: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
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
        countryLabel.isHidden = true
        countryTxt.isHidden = true
        zipLabel.isHidden = true
        zipTxt.isHidden = true
    }
   
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        miracleImg.isHidden = true
        miracleTxt.isHidden = true
        priceTxt.isHidden = true
        divider.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTxt.isHidden = true
        streetLabel.isHidden = true
        streetTxt.isHidden = true
        cityLabel.isHidden = true
        cityTxt.isHidden = true
        statePicker.isHidden = true
        stateLabel.isHidden = true
        stateBtn.isHidden = true
        countryLabel.isHidden = true
        countryTxt.isHidden = true
        zipLabel.isHidden = true
        zipTxt.isHidden = true
        successImg.isHidden = false
        buyNowBtn.isHidden = true
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
        stateBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTxt.isHidden = false
        zipLabel.isHidden = false
        zipTxt.isHidden = false

    }
}

