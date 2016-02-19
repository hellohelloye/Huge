//
//  CurrencyConverterData.swift
//  Huge
//
//  Created by Yukui Ye on 2/18/16.
//  Copyright © 2016 Yukui Ye. All rights reserved.
//

import Foundation
import SwiftyJSON

class  CurrencyConverterData: NSObject {
    let AUD: NSNumber?
    let BGN: NSNumber?
    let BRL: NSNumber?
    let CAD: NSNumber?
    let CHF: NSNumber?
    let CNY: NSNumber?
    let CZK: NSNumber?
    let DKK: NSNumber?
    let GBP: NSNumber?
    let HKD: NSNumber?
    let HRK: NSNumber?
    let IDR: NSNumber?
    let ILS: NSNumber?
    let INR: NSNumber?
    let JPY: NSNumber?
    let KRW: NSNumber?
    let MXN: NSNumber?
    let MYR: NSNumber?
    let NOK: NSNumber?
    let NZD: NSNumber?
    let PHP: NSNumber?
    let PLN: NSNumber?
    let RON: NSNumber?
    let RUB: NSNumber?
    let SEK: NSNumber?
    let SGD: NSNumber?
    let THB: NSNumber?
    let TRY: NSNumber?
    let ZAR: NSNumber?
    let EUR: NSNumber?
    
    required init?(json: SwiftyJSON.JSON) {
        print(json)
        
        self.AUD = json["AUD"].number!
        self.BGN = json["BGN"].number!
        self.BRL = json["BRL"].number!
        self.CAD = json["CAD"].number!
        self.CHF = json["CHF"].number!
        self.CNY = json["CNY"].number!
        self.CZK = json["CZK"].number!
        self.DKK = json["DKK"].number!
        self.GBP = json["GBP"].number!
        self.HKD = json["HKD"].number!
        self.HRK = json["HRK"].number!
        self.IDR = json["IDR"].number!
        self.ILS = json["ILS"].number!
        self.INR = json["INR"].number!
        self.JPY = json["JPY"].number!
        self.KRW = json["KRW"].number!
        self.MXN = json["MXN"].number!
        self.MYR = json["MYR"].number!
        self.NOK = json["NOK"].number!
        self.NZD = json["NZD"].number!
        self.PHP = json["PHP"].number!
        self.PLN = json["PLN"].number!
        self.RON = json["RON"].number!
        self.RUB = json["RUB"].number!
        self.SEK = json["SEK"].number!
        self.SGD = json["SGD"].number!
        self.THB = json["THB"].number!
        self.TRY = json["TRY"].number!
        self.ZAR = json["ZAR"].number!
        self.EUR = json["EUR"].number!
    }
}

