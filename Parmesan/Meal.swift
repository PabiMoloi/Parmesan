//
//  Meal.swift
//  Parmesan
//
//  Created by DVT on 2018/05/04.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

struct Meal : Decodable{
    var idMeal: String
    var strMeal: String
    var strMealThumb: String
    var strCategory: String
    var strArea: String
    var strInstructions: String
    var strTags: String?
    var strIngredient1: String
    var strIngredient2: String
    var strIngredient3: String
    var strIngredient4: String
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strMeasure1: String
    var strMeasure2: String
    var strMeasure3: String
    var strMeasure4: String
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
}
struct ResponseData : Decodable{
    var meals: [Meal]
}
