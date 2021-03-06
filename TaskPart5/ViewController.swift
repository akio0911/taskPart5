//
//  ViewController.swift
//  TaskPart5
//
//  Created by niwa  shuhei on 2021/02/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label: UILabel!

    @IBAction private func button(_ sender: UIButton) {
        let textFieldNum1 = Double(textField1.text!)
        let textFieldNum2 = Double(textField2.text!)
        let title = "課題5"
        // OKボタンを作成&追加
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)

        if textFieldNum1 == nil {
            // アラートを作成
            let alert = UIAlertController(title: title, message: "割られる数を入力してください", preferredStyle: .alert)

            present(alert, animated: true, completion: nil)
            alert.addAction(okAction)
        } else if textFieldNum2 == nil {
            // アラートを作成
            let alert = UIAlertController(title: title, message: "割る数を入力してください", preferredStyle: .alert)

            present(alert, animated: true, completion: nil)
            alert.addAction(okAction)
        } else if textFieldNum2 == 0 {
            // アラートを作成
            let alert = UIAlertController(title: title, message: "割る数には、0を入力しないでください", preferredStyle: .alert)

            present(alert, animated: true, completion: nil)
            alert.addAction(okAction)
        } else {
            let result = textFieldNum1! / textFieldNum2!
            let resultRound = round(result*100000)/100000
            label.text = String(resultRound)
        }
    }
}
