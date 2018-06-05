//
//  ApiClient.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import Alamofire

class ApiClient{
    
    let baseUrl = "https://www.themealdb.com/api/json/v1/1/filter.php?a=Italian"
    //let jsonDecoder = JSONDecoder()
    //let defaultSession = URLSession(configuration: .default)
    var responseData = [ResponseData]()
    func getMealList() -> [ResponseData]? {
        Alamofire.request(baseUrl).responseJSON{meals in
            self.responseData = [meals.value as! ResponseData]
            }
        return responseData
        }
    }


