//
//  ViewController.swift
//  Huge
//
//  Created by Yukui Ye on 2/18/16.
//  Copyright © 2016 Yukui Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let dataController = CurrencyConverterDataController()
    var UKPounds: NSNumber = 0.0
    var EUEuro: NSNumber = 0.0
    var JapanYen: NSNumber = 0.0
    var BrazilReals: NSNumber = 0.0
    var inputDollar: Double?
    
    @IBOutlet var convertedLabel: UILabel!
    @IBOutlet var inputDollarTextField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataController.loadQuoteItems { (data)  in
            if data == nil {
                let alert = UIAlertController(title: "Error", message: "Could not load quotes)", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            } else {
                print(data)
                
                self.UKPounds = (data![0] as! CurrencyConverterData).GBP!
                self.EUEuro = (data![0] as! CurrencyConverterData).EUR!
                self.JapanYen = (data![0] as! CurrencyConverterData).JPY!
                self.BrazilReals = (data![0] as! CurrencyConverterData).BRL!
            }
        }
    }
    
    @IBAction func pressGBPconverter(sender: UIButton) {
        if self.convertedLabel.text != nil {
            self.convertedLabel.text = ""
        }
        
        if self.inputDollar == nil {
           self.hitReturnAlert()
        } else {
            self.convertedLabel.text = String(format: "UK Pounds(GBP): %f", self.inputDollar! * Double(self.UKPounds.doubleValue))
        }
    }
    
    @IBAction func pressEURconverter(sender: UIButton) {
        if self.convertedLabel.text != nil {
            self.convertedLabel.text = ""
        }
        
        if self.inputDollar == nil {
            self.hitReturnAlert()
        } else {
            self.convertedLabel.text = String(format: "EU Euro(EUR): %f", self.inputDollar! * Double(self.EUEuro.doubleValue))
        }
    }
    
    @IBAction func pressJPYconverter(sender: UIButton) {
        if self.convertedLabel.text != nil {
            self.convertedLabel.text = ""
        }
        
        if self.inputDollar == nil {
            self.hitReturnAlert()
        } else {
            self.convertedLabel.text = String(format: "Janpan Yen(JPY): %f", self.inputDollar! * Double(self.JapanYen.doubleValue))
        }
    }

    @IBAction func pressBRLconverter(sender: UIButton) {
        if self.convertedLabel.text != nil {
            self.convertedLabel.text = ""
        }
        
        if self.inputDollar == nil {
            self.hitReturnAlert()
        } else {
            self.convertedLabel.text = String(format: "Brazil Reais(BRL): %f", self.inputDollar! * Double(self.BrazilReals.doubleValue))
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    
        if textField.text! == "" {
            self.inputDollar = 0.0
        } else {
            self.inputDollar = NSNumberFormatter().numberFromString(textField.text! as String)?.doubleValue
        }
        
        return true;
    }
    
    func hitReturnAlert() {
        let alert = UIAlertController(title: "Error", message: "Please hit RETURN button after finishing input amount of dollar", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

