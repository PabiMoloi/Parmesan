//
//  RecipeViewController.swift
//  Parmesan
//
//  Created by DVT on 2018/05/07.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {

   
    @IBOutlet weak var mealTitle: UILabel!
    @IBOutlet weak var mealCategory: UILabel!
    @IBOutlet weak var mealThumb: UIImageView!
    
    @IBOutlet weak var ingredient1: UILabel!
    @IBOutlet weak var ingredient2: UILabel!
    @IBOutlet weak var ingredient3: UILabel!
    @IBOutlet weak var ingredient4: UILabel!
    @IBOutlet weak var ingredient5: UILabel!
    
    @IBOutlet weak var measure1: UILabel!
    @IBOutlet weak var measure2: UILabel!
    @IBOutlet weak var measure3: UILabel!
    @IBOutlet weak var measure4: UILabel!
    @IBOutlet weak var measure5: UILabel!
    @IBOutlet weak var instructions: UILabel!
    
    
    var mTitle: String = ""
    var mCategory: String = ""
    var mThumb: String = ""
    var mIngredient1: String = ""
    var mIngredient2: String = ""
    var mIngredient3: String = ""
    var mIngredient4: String = ""
    var mIngredient5: String = ""
    
    var mMeasure1: String = ""
    var mMeasure2: String = ""
    var mMeasure3: String = ""
    var mMeasure4: String = ""
    var mMeasure5: String = ""
    var mInstructions: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mealTitle.text = self.mTitle
        self.mealCategory.text = self.mCategory
        self.mealThumb.image = UIImage(named: mThumb)
        self.ingredient1.text = self.mIngredient1
        self.ingredient2.text = self.mIngredient2
        self.ingredient3.text = self.mIngredient3
        self.ingredient4.text = self.mIngredient4
        self.ingredient5.text = self.mIngredient5
        self.measure1.text = self.mMeasure1
        self.measure2.text = self.mMeasure2
        self.measure3.text = self.mMeasure3
        self.measure4.text = self.mMeasure4
        self.measure5.text = self.mMeasure5
        self.instructions.text = self.mInstructions
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
