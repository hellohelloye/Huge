//
//  CurrencyConverterDataController.swift
//  Huge
//
//  Created by Yukui Ye on 2/18/16.
//  Copyright © 2016 Yukui Ye. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire

class CurrencyConverterDataController {
    var dataObjects = NSMutableArray()
    
    func endpointForFeed() -> String {
        let endpoint = "http://api.fixer.io/latest?base=USD"
        return endpoint
    }
    
    func loadQuoteItems(completionHandler: (NSMutableArray?) -> ()) -> () {
        Alamofire.request(.GET, self.endpointForFeed()).validate().responseJSON { response in
            switch response.result {
            case .Success:
                if let value = response.result.value {
                    let json = JSON(value)
            
                    let currencyInfo = CurrencyConverterData.init(json: json["rates"])
                    self.dataObjects.addObject(currencyInfo!)
                }
            case .Failure(let error):
                print(error)
            }
            completionHandler(self.dataObjects)
        }
    }
}