//
//  ViewController.swift
//  CalculatorPractice
//
//  Created by 黃大祐 on 2016/7/24.
//  Copyright © 2016年 DaisukeTony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var ScreenDisplayNumber: UILabel!
    
    private var ToNoZero:Bool = false
    
    @IBAction private func WhenTouchDigital (sender: UIButton) {
        
        let TouchNumber = sender.currentTitle!
        if ToNoZero {
            let ScreenNumber = ScreenDisplayNumber.text!
            ScreenDisplayNumber.text =  ScreenNumber + TouchNumber
        }
        else {
            ScreenDisplayNumber.text =  TouchNumber
        }
        ToNoZero = true // 曾按過數字1~9：ToNoZero=True
    }
    
    private var StringToDoubleTypeChange : Double {
        
        get {   // When Be a input
            return Double(ScreenDisplayNumber.text!)!
        }
        set {   // When Be a output
            ScreenDisplayNumber.text = String(newValue)
        }
        
    }
    
    private var BrainCount = CalculatorBrain()
    
    @IBAction private func WhenTouchSymbol (sender: UIButton) {
        
        if ToNoZero {   //曾按過數字1~9
            BrainCount.setOperand(StringToDoubleTypeChange)
            ToNoZero = false    //如果再重新按下數字鍵,重新開始由你按下的數字開始顯示
        }
        
        if let TouchOperation = sender.currentTitle {
            BrainCount.performOperator(TouchOperation)
        }
        
        StringToDoubleTypeChange = BrainCount.result
     
    }
    
}

