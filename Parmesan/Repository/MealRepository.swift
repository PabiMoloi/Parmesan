//
//  MealRepository.swift
//  Parmesan
//
//  Created by DVT on 2018/05/14.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation

protocol MealRepository{
    
    func getMealList(completion: @escaping (ResponseData) -> Void) -> [ResponseData]
    func getMealRecipe(mealId: String) -> Meal?
}