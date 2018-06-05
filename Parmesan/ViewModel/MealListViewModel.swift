//
//  MealListViewModel.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class MealListViewModel {
    
    var MealList : [ResponseData] = []
    let MealListRepo = MealRepositoryImpl()

    func getMeals() -> [ResponseData] {
        return MealListRepo.getMealList(completion:{ meals in meals
            do {
                 print(meals.meals)
            }
        })
    }
}
