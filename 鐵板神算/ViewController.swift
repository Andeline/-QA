//
//  ViewController.swift
//  鐵板神算
//
//  Created by 蔡佳穎 on 2021/5/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = "開始發問吧！"
    }

    @IBAction func ask(_ sender: UIButton) {
        view.endEditing(true)
        
        let questionText = questionTextField.text!
        
        if questionText.contains("兩週解除三級") {
            answerLabel.text = "用過度樂觀的言語安慰自己是不切實際的，乖乖待在家吧孩子"
        } else if questionText.contains("四級") || questionText.contains("升四級"){
            answerLabel.text = "四級警戒的標準為連續14天確診100例以上，且50%找不到傳染鏈"
        } else if questionText.contains("明天幾例") || questionText.contains("明天確診") {
            answerLabel.text = "不是200以上，就是200以下"
        } else if questionText.hasPrefix("能不能") {
            answerLabel.text = "一切都在控制之下，每人落實防疫一定沒問題"
        }
    }
    
    @IBAction func textField(_ sender: UITextField) {
        answerLabel.text = ""
    }
}

