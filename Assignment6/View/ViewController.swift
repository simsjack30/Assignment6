//
//  ViewController.swift
//  Assignment6
//
//  Created by John Sims on 2/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    var conversionLogic = ConversionLogic()
    

    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var usdTextField: UITextField!
    
    @IBAction func euroSwitch(_ sender: UISwitch) {
        conversionLogic.setEuro(sender.isOn)
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        conversionLogic.setYen(sender.isOn)
    }
    
    @IBAction func pesoSwitch(_ sender: UISwitch) {
        conversionLogic.setPeso(sender.isOn)
    }
    
    @IBAction func yuanSwitch(_ sender: UISwitch) {
        conversionLogic.setYuan(sender.isOn)
    }
    
    @IBAction func usdEditingChanged(_ sender: UITextField) {
        validateInput()
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        conversionLogic.calcConversion(usdTextField.text!)
        if errorLabel.isHidden {
            performSegue(withIdentifier: "showConversion", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    func validateInput() {
        if let inputText = usdTextField.text, Int(inputText) != nil {
            errorLabel.isHidden = true
        } else {
            errorLabel.isHidden = false
        }
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true) // This will dismiss the keyboard
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showConversion", errorLabel.isHidden {
            if let destinationVC = segue.destination as? conversionViewController {
                destinationVC.usdAmount = conversionLogic.usdAmount
                
                destinationVC.showEuro = conversionLogic.showEuro
                destinationVC.euroValue = conversionLogic.showEuro ? conversionLogic.euroResult : nil
                destinationVC.showYen = conversionLogic.showYen
                destinationVC.yenValue = conversionLogic.showYen ? conversionLogic.yenResult : nil
                destinationVC.showPeso = conversionLogic.showPeso
                destinationVC.pesoValue = conversionLogic.showPeso ? conversionLogic.pesoResult : nil
                destinationVC.showYuan = conversionLogic.showYuan
                destinationVC.yuanValue = conversionLogic.showYuan ? conversionLogic.yuanResult : nil
            }
        }
    }

    
}
