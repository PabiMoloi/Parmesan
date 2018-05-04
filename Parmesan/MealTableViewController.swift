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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
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

        cell.title.text = meal.title
        cell.picture.image = meal.photo
        cell.category.text = meal.category

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadMeals(){
        
        let chickenAlfredoImage = UIImage (named: "chickenalfredo")
        let chilliPrawnImage = UIImage(named:"chilliprawn")
        let fettucineAlfredoImage = UIImage(named: "fettucinealfredo")
        let lasagneImage = UIImage(named:"lasange")
        let pastaSaladImage = UIImage(named: "pastasalad")
        let pilchardMilaneImage = UIImage(named: "pilchardmilane")
        let spaghettiBologneseImage = UIImage(named: "spagettibolognese")
        let squashLinguineImage = UIImage(named: "squashlinguine")
        let venetianDuckImage = UIImage(named: "venetianduckragu")
        
        let ChickenAlfredoMeal = Meal(title:"Chicken Alfredo Primavera",photo: chickenAlfredoImage,category: "Chicken")
        let ChilliPrawnMeal = Meal(title: "Chilli Prawn", photo: chilliPrawnImage, category: "Pasta")
        let FettucineAlfredoMeal = Meal(title: "Fettucine Alfredo", photo: fettucineAlfredoImage, category: "Pasta")
        let LasangeMeal = Meal(title: "Lasange", photo: lasagneImage, category: "Pasta")
        let PastaSaladMeal = Meal(title: "Mediterranean Pasta Salad", photo: pastaSaladImage, category: "Chicken")
        let PilchardMilaneMeal = Meal(title: "Pilchard Puttanesca", photo: pilchardMilaneImage, category: "Pasta")
        let SpagettiBologneseMeal = Meal(title: "Spaghetti Bolognese", photo: spaghettiBologneseImage, category: "Pasta")
        let SquashLinguineMeal = Meal(title: "Squash Linguine", photo: squashLinguineImage, category: "Pasta")
        let VenetianDuckRagu = Meal(title: "Venetian Duck Ragu", photo: venetianDuckImage, category: "Duck")
        
        meals += [ChickenAlfredoMeal, ChilliPrawnMeal, FettucineAlfredoMeal, LasangeMeal, PastaSaladMeal, PilchardMilaneMeal,SpagettiBologneseMeal, SquashLinguineMeal, VenetianDuckRagu]
    }

}
