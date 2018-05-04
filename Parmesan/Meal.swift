//
//  Meal.swift
//  Parmesan
//
//  Created by DVT on 2018/05/04.
//  Copyright © 2018 DVT. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    
    var title: String
    var photo: UIImage?
    var category: String?
    
    init (title: String, photo:UIImage?, category: String?){
        self.title = title
        self.photo = photo
        self.category = category
    }
}
