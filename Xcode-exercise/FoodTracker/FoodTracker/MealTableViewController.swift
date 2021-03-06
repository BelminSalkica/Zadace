//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Belmin Salkica on 8/31/16.
//  Copyright © 2016 WIP. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    // MARK: Properties
    
    var meals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load sample data 
        loadSampleMeals()
    }
    
    func loadSampleMeals() {
        let photo1 = UIImage(named: "meal1")!
        let meal1 = Meal(name: "Cevapi", photo: photo1, rating: 5)!
        
        let photo2 = UIImage(named: "meal2")!
        let meal2 = Meal(name: "Burek", photo: photo2, rating: 4)!
        
        let photo3 = UIImage(named: "meal3")!
        let meal3 = Meal(name: "Janjetina", photo: photo3, rating: 5)!
        
        let photo4 = UIImage(named: "meal4")!
        let meal4 = Meal(name: "Teletina", photo: photo4, rating: 5)!
        
        meals += [meal1, meal2, meal3, meal4]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
         return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return meals.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MealTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MealTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]

        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.ratingControl.rating = meal.rating
        
        return cell
    }
}
