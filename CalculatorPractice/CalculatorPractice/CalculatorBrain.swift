//
//  CalculatorBrain.swift
//  CalculatorPractice
//
//  Created by 黃大祐 on 2016/7/25.
//  Copyright © 2016年 DaisukeTony. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private var accumulator : Double = 0.0
    
    func setOperand (operand : Double ) {
        accumulator = operand
    }
    
    func performOperator (symbol:String) {
        switch symbol {
        case "π" : accumulator = M_PI
        case "√" : accumulator = sqrt(accumulator)
        default:break
        }
    }
    
    var result : Double {
        get {
            return accumulator
        }
    }
    
}



/* 
parameter:
1. private var accumulator : Double = 0.0
2. var result : Double
*/