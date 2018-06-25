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

}
