//
//  CalculateBrain.swift
//  BMI-Caculator-IOS-13
//
//  Created by Phongsatorn Khummontree on 3/7/2563 BE.
//  Copyright © 2563 Phongsatorn Khummontree. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmiValue: BMI?
    
    
    mutating func calculateResultBMI(height: Float, weight: Float) {
        
        let bmi = weight / pow(height, 2.0)
        
        if bmi < 18.5 {
           
            bmiValue = BMI(value: bmi, advice: "ค่า BMI ของคุณอยู่ในเกณฑ์น้อยกว่าปกติ แนะนำ: ทานอาหารให้ครบ 5 หมู่ และทานอาหารให้เพียงพอ", status: "ผอมเกินไป", color: #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))
    
        }
        else if bmi >= 18.5 && bmi <= 24.9 {
            bmiValue = BMI(value: bmi, advice: "ค่า BMI ของคุณอยู่ในเกณฑ์ปกติ แนะนำ: หมั่นออกกำลังกาย และรักษาสุขภาพอยู่เสมอๆ",status: "น้ำหนักปกติ", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else if bmi > 24.9 && bmi <= 29.9 {
            bmiValue = BMI(value: bmi, advice: "ค่า BMI ของคุณอยู่ในเกณฑ์อ้วนในระดับหนึ่ง แนะนำ: หมั่นออกกำลังกาย ปรับพฤติกรรมทานอาหาร และตรวจสุขภาพประจำปี",status: "อ้วน", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        }
        else {
            bmiValue = BMI(value: bmi, advice: "ค่า BMI ของคุณอยู่ในเกณฑ์เกินมาตราฐาน แนะนำ: ปรับพฤติกรรมทานอาหาร และควรเริ่มออกกำลังกาย หากตัวเลขสูงถึง 40.0 ยิ่งแสดงถึงอ้วนมากขึ้น ควรตรวจสุขภาพ และ ปรึกษาแพทย์",status: "อ้วนมาก", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
        
    }
    
    func getResult() -> String {
        let bmi = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmi
    }
    
    func getAdvice() -> String {
        return bmiValue!.advice
    }
    func getStatus() -> String {
        return bmiValue!.status
    }
    func getColor() -> UIColor {
        return bmiValue!.color
    }
    
}
