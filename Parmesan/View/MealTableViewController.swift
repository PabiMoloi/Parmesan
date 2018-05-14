//
//  MealTableViewController.swift
//  Parmesan
//
//  Created by DVT on 2018/05/04.
//  Copyright © 2018 DVT. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {

    var meals = [Meal]()
    var responseData = [ResponseData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meals = loadMealsJsonData(filename: "MealsJSON")!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIndentifier = "MealTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as? MealTableViewCell else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell")
        }
        
        let meal = meals[indexPath.row]

        cell.title.text = meal.strMeal
        cell.picture.image = UIImage(named: meal.strMealThumb)
        cell.category.text = meal.strCategory

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detailsSegue"){
            let recipeView: RecipeViewController = segue.destination as! RecipeViewController
            let indexPath = self.tableView.indexPathForSelectedRow!
            let titleString = self.meals[indexPath.row]
            recipeView.mTitle = titleString.strMeal
            recipeView.mCategory = titleString.strCategory
            recipeView.mThumb = titleString.strMealThumb
            recipeView.mInstructions = titleString.strInstructions
            recipeView.mIngredient1 = titleString.strIngredient1
            recipeView.mIngredient2 = titleString.strIngredient2
            recipeView.mIngredient3 = titleString.strIngredient3
            recipeView.mIngredient4 = titleString.strIngredient4
            recipeView.mIngredient5 = titleString.strIngredient5!
            recipeView.mMeasure1 = titleString.strMeasure1
            recipeView.mMeasure2 = titleString.strMeasure2
            recipeView.mMeasure3 = titleString.strMeasure3
            recipeView.mMeasure4 = titleString.strMeasure4
            recipeView.mMeasure5 = titleString.strMeasure5!
        }
    }
    
    func loadMealsJsonData(filename fileName: String) -> [Meal]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.self, from: data)
                return jsonData.meals
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
