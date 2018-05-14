//
//  MealListViewModel.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

class MealListViewModel {
    
    var MealList : [Meal]
    let MealListRepo = MealRepositoryImpl()
    
    init() {
        self.MealList = MealListRepo.getMealList()
    }
    
    func getMeals -> [Meal] {
        return MealList
    }
}
