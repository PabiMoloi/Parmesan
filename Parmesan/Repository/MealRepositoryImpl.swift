//
//  MealRepositoryImpl.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

struct MealRepositoryImpl : MealRepository {
    
    var meals: [Meal] = []
    var mealRecipe: Meal? = nil
    
    func getMealList() -> [Meal] {
        return meals
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
