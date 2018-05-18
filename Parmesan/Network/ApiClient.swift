//
//  ApiClient.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class ApiClient{
    
    let baseUrl = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?a=Italian")
    let jsonDecoder = JSONDecoder()
    let defaultSession = URLSession(configuration: .default)
    
    func getMealList(completion: @escaping (AnyObject) -> Void) {
        
        let task = defaultSession.dataTask(with: baseUrl!, completionHandler: {
            (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
                
            } else {
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data!)
                    completion(json as AnyObject)
                    } catch {
                    print("error in JSONSerialization")
                }
            }
            
        })
        task.resume()
    }
}

