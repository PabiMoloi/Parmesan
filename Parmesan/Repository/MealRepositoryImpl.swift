//
//  MealRepositoryImpl.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

struct MealRepositoryImpl : MealRepository {
    
    var meals = [Meal]()
    var responseData = [ResponseData]()
    var mealRecipe: Meal? = nil
    let apiCall = ApiClient()

    func getMealList() -> [ResponseData] {
        apiCall.getMealList(completion: { meal in
            do {
                let jsonData = try? JSONSerialization.data(withJSONObject: meal, options: [])
                let decoder = JSONDecoder()
                let jsonResponse = try decoder.decode(ResponseData.self, from: jsonData!)
                print(jsonResponse.meals)
            }
            catch {
                print("error:\(error)")
            }
        })
        return responseData
    }
    
    func getMealRecipe(mealId: String) -> Meal? {
        for mealRecipe in meals {
            if mealRecipe.idMeal == mealId {
                return mealRecipe
            }
        }
        return nil
    }
}
