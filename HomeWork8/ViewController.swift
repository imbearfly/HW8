//
//  ViewController.swift
//  homeWork8th
//
//  Created by Fly on 7/19/16.
//  Copyright © 2016 Fly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var insertTxt: UITextField!
    
    let limitCHTs = 10
    //    var counter = 0
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //        let countDown = limitCHTs-counter
        //        if range.length == 0 {
        //        if counter+1 < limitCHTs {
        //            counter += 1
        //            countDownLabel.text = String(limitCHTs-counter)
        //            return true
        //        }else {
        //                return false
        //            }
        //        }else {
        //                countDownLabel.text = String(limitCHTs-Int(countDown!)+range.length)
        //                return true
        //        }
        
        let oldLength = textField.text?.characters.count
        let insertLength = string.characters.count
        let newLength = oldLength! + insertLength - range.length
        let isWithinLimit = newLength <= limitCHTs
        if isWithinLimit {
            countDownLabel.text = String(limitCHTs - newLength)
        }
        return isWithinLimit
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.insertTxt.resignFirstResponder()
        return true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.insertTxt.delegate = self
        countDownLabel.text = String(limitCHTs)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

