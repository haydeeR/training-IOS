//
//  ViewController.swift
//  recipes
//
//  Created by Haydee Rodriguez on 13/01/18.
//  Copyright © 2018 haydeeTi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var recipes: [Recipe] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var recipe = Recipe(name: "Pizza hawaiana", image: #imageLiteral(resourceName: "pizza"))
        self.recipes.append(recipe)
        recipe = Recipe(name: "Tamales", image: #imageLiteral(resourceName: "tamales"))
        self.recipes.append(recipe)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "cellRecipe"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.textLabel?.text = recipe.name
        cell.imageView?.image = recipe.image
        
        return cell
    }
    
}

