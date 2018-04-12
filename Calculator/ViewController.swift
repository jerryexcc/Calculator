//
//  ViewController.swift
//  Calculator
//
//  Created by 世明 on 2018/4/12.
//  Copyright © 2018年 世明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var displayNum = ""//顯示用字串
    var firstNum = 0, secondNum = 0, totalNum = 0, calculat = 1
        //被X數           Ｘ數           結果數
    @IBAction func btn1Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "1"
        display.text = displayNum
    }
    @IBAction func btn2Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "2"
        display.text = displayNum
    }
    @IBAction func btn3Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "3"
        display.text = displayNum
    }
    @IBAction func btn4Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "4"
        display.text = displayNum
    }
    @IBAction func btn5Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "5"
        display.text = displayNum
    }
    @IBAction func btn6Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "6"
        display.text = displayNum
    }
    @IBAction func btn7Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "7"
        display.text = displayNum
    }
    @IBAction func btn8Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "8"
        display.text = displayNum
    }
    @IBAction func btn9Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "9"
        display.text = displayNum
    }
    @IBAction func btn0Action(_ sender: Any) {
        if display.text == ""{
            displayNum = ""
        }
        displayNum = displayNum + "0"
        display.text = displayNum
    }
    @IBAction func btnCleanAction(_ sender: Any) {
        display.text = ""
        displayNum = ""
        firstNum = 0
        secondNum = 0
    }
    @IBAction func btnPlusAction(_ sender: Any) {
        calculat = 1
        if displayNum == ""{
            display.text = "你想玩壞程式啊"
            return
        }
        firstNum = Int(displayNum)!
        if secondNum == 0{
            secondNum = firstNum
        }else{
            secondNum = 0
        }
        display.text = ""
    }
    @IBAction func btnMinusAction(_ sender: Any) {
        calculat = 2
        if displayNum == ""{
            display.text = "你想玩壞程式啊"
            return
        }
        firstNum = Int(displayNum)!
        if secondNum == 0{
            secondNum = firstNum
        }
        display.text = ""
    }
    @IBAction func btnMulitiplyAction(_ sender: Any) {
        calculat = 3
        if displayNum == ""{
            display.text = "你想玩壞程式啊"
            return
        }
        firstNum = Int(displayNum)!
        if secondNum == 0{
            secondNum = firstNum
        }
        display.text = ""
    }
    @IBAction func btnDivisionAction(_ sender: Any) {
        calculat = 4
        if displayNum == ""{
            display.text = "你想玩壞程式啊"
            return
        }
        firstNum = Int(displayNum)!
        if secondNum == 0{
            secondNum = firstNum
        }
        display.text = ""
    }
    
    @IBAction func btnEqualAction(_ sender: Any) {
        if displayNum == ""{
            display.text = "你想玩壞程式啊"
            return
        }else{
         firstNum = Int(displayNum)!
        }
        
        switch calculat {
        case 1:
            totalNum = firstNum + secondNum
            break
        case 2:
            totalNum = secondNum - firstNum
            break
        case 3:
            totalNum = firstNum * secondNum
            break
        case 4:
            totalNum = secondNum / firstNum
            break
        default:
            print("你到的了這邊我叫你神")
        }
        display.text = "\(totalNum)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

