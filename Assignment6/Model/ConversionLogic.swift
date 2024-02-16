//
//  ConversionLogic.swift
//  Assignment6
//
//  Created by John Sims on 2/16/24.
//

import Foundation

struct ConversionLogic {
    
    var usdAmount: Double = 0
    var euroResult: Double = 0
    var yenResult: Double = 0
    var pesoResult: Double = 0
    var yuanResult: Double = 0
    
    var mulEuro = 1.0736
    var mulYen = 148.79
    var mulPeso = 17.168
    var mulYuan = 7.1982
    
    var showEuro = true
    var showYen = true
    var showPeso = true
    var showYuan = true
    
    mutating func setEuro(_ switchValue: Bool) {
        if switchValue {
            showEuro = true
        } else {
            showEuro = false
        }
    }
    
    mutating func setYen(_ switchValue: Bool) {
        if switchValue {
            showYen = true
        } else {
            showYen = false
        }
    }
    
    mutating func setPeso(_ switchValue: Bool) {
        if switchValue {
            showPeso = true
        } else {
            showPeso = false
        }
    }
    
    mutating func setYuan(_ switchValue: Bool) {
        if switchValue {
            showYuan = true
        } else {
            showYuan = false
        }
    }
    
    mutating func calcConversion(_ usd: String) {
        if let usdAmount = Double(usd) {
            self.usdAmount = usdAmount
            euroResult = (mulEuro * usdAmount).rounded()
            yenResult = (mulYen * usdAmount).rounded()
            pesoResult = (mulPeso * usdAmount).rounded()
            yuanResult = (mulYuan * usdAmount).rounded()
        }
    }
}
