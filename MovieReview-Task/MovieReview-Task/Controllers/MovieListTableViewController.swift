//
//  MovieListTableViewController.swift
//  MovieReview-Task
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit
import PromiseKit

class MovieListTableViewController: UITableViewController {

    var moviesReviews = [MovieReview]()
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        loadReviews()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    func registerNib(){
        let nibCell = UINib(nibName: ReusableTableViewCell.resusableID, bundle: nil)
        tableView.register(nibCell, forCellReuseIdentifier: ReusableTableViewCell.resusableID)
        print(ReusableTableViewCell.resusableID)
    }
    
    func loadReviews() {
        MovieHandler.getReviews(page: currentPage).done({
            movies in
            self.moviesReviews = movies
            self.tableView.reloadData()
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return moviesReviews.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ReusableTableViewCell.resusableID, for: indexPath) as! ReusableTableViewCell
        cell.fullCell(movie: moviesReviews[indexPath.row])
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
