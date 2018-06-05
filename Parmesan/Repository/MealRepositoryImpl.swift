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

    func getMealList(completion: @escaping (ResponseData) -> Void) -> [ResponseData]{
        return apiCall.getMealList()!
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
