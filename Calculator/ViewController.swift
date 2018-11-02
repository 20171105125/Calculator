//
//  ViewController.swift
//  Calculator
//
//  Created by 王子健 on 2018/9/27.
//  Copyright © 2018年 王子健. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var result_1: UITextField!
    
    @IBOutlet weak var result_2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var number = 0 //+-*/
    var judge = 0 //output bit
    var add = 0
    var re = 0 //result.text have or not +\-
    
    
    @IBAction func number1(_ sender: Any) {
        if re == 1{
            result.text = "1"
        }else{
            result.text = result.text! + "1"
        }
    }
    @IBAction func number2(_ sender: Any) {
        if re == 1{
            result.text = "2"
        }else{
            result.text = result.text! + "2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if re == 1{
            result.text = "3"
        }else{
            result.text = result.text! + "3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text = "4"
        }else{
            result.text = result.text! + "4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if re == 1{
            result.text = "5"
        }else{
            result.text = result.text! + "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text = "6"
        }else{
            result.text = result.text! + "6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text = "7"
        }else{
            result.text = result.text! + "7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text = "8"
        }else{
            result.text = result.text! + "8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text = "9"
        }else{
            result.text = result.text! + "9"
        }
    }
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }else{
            result.text = result.text! + "0"
        }
    }
    
    
    @IBAction func add(_ sender: Any) {//  +
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a + b
            result_1.text = String(c)
            result.text = ""
            number = 1
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 1
                re = 0
            }
        }
    }
    @IBAction func subtract(_ sender: Any) {//  -
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a - b
            result_1.text = String(c)
            result.text = ""
            number = 2
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 2
                re = 0
            }
        }
    }
    @IBAction func multiply(_ sender: Any) {//  *
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a * b
            result_1.text = String(c)
            result.text = ""
            number = 3
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 3
                re = 0
                add = 1
            }
        }
    }
    @IBAction func divide(_ sender: Any) {//  /
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a / b
            result_1.text = String(c)
            result.text = ""
            number = 4
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let y = Double(result.text!)!
                result_1.text = String(y)
                result.text = ""
                number = 4
                re = 0
                add = 1
            }
        }
    }
    @IBAction func equal(_ sender: Any) {//  =
        var d:Double
        var c:Double
        let x = Double(result_1.text!)!
        c = (result.text! as NSString).doubleValue
        if number == 1 {
            d = x + c
        }else if number == 2 {
            d = x - c
        }else if number == 3 {
            d = x * c
        }else if number == 4 {
            d = x / (c)
        }else{
            d = 1000
        }
        result_2.text = String(c)
        if judge == 1{
            result.text = String(format:"%f", d)
        }else{
            result.text = String(format:"%.0f", d)
        }
        re = 1
        judge = 0
        add = 0
    }
    @IBAction func point(_ sender: Any) {//  .
        result.text = result.text! + "."
        judge = 1
    }
    @IBAction func change(_ sender: Any) {// +\-
        let count = Double(result.text!)!
        let count2 = -count
        result.text = String(count2)
        re = 0
    }
    @IBAction func clear(_ sender: Any) {// C
        result.text = ""
        re = 0
    }
    @IBAction func allclear(_ sender: Any) {// AC
        result.text = ""
        result_1.text = ""
        result_2.text = ""
        re = 0
    }
    
}


    


