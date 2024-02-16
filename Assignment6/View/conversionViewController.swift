//
//  conversionViewController.swift
//  Assignment6
//
//  Created by John Sims on 2/16/24.
//

import UIKit

class conversionViewController: UIViewController {
    
    var usdAmount: Double = 0
    var showEuro: Bool = false
    var euroValue: Double?
    var showYen: Bool = false
    var yenValue: Double?
    var showPeso: Bool = false
    var pesoValue: Double?
    var showYuan: Bool = false
    var yuanValue: Double?

    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var yenLabel: UILabel!
    
    @IBOutlet weak var pesoLabel: UILabel!
    
    @IBOutlet weak var yuanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        usdLabel.text = "USD: \(String(format: "%.0f",usdAmount))"
        euroLabel.isHidden = !showEuro
        yenLabel.isHidden = !showYen
        pesoLabel.isHidden = !showPeso
        yuanLabel.isHidden = !showYuan

        if showEuro {
            euroLabel.text = "Euro: \(String(format: "%.0f", euroValue!))"
        }
        if showYen {
            yenLabel.text = "Yen: \(String(format: "%.0f", yenValue!))"
        }
        if showPeso {
            pesoLabel.text = "Peso: \(String(format: "%.0f", pesoValue!))"
        }
        if showYuan {
            yuanLabel.text = "Yuan: \(String(format: "%.0f", yuanValue!))"
        }
    }
}
