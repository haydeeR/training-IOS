//
//  ViewController.swift
//  test-alamofire
//
//  Created by Haydee Rodriguez on 3/31/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit
import AlamofireImage
import PromiseKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var actors = [Actor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.estimatedRowHeight = 180
        APIManager._shared.fetchActorsFromAPI()
            .then ({ actors -> Promise<[Actor]> in
                return APIManager._shared.fetchActorsFromAPI()
            })
            .map ({ actors in
                self.actors = actors
            })
            .done {_ in
                self.tableview.reloadData()

            }
            .catch({ error -> Void in
                print(error)
            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
// MARK: Datasource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActorCell", for: indexPath) as! ActorTableViewCell
        cell.name.text = actors[indexPath.row].name!
        cell.country.text = actors[indexPath.row].country!
        cell.spouse.text = actors[indexPath.row].spouse!
        cell.descLabel.text = actors[indexPath.row].desc!
        let url = URL(string: actors[indexPath.row].imageURL!)
        cell.thumbnailImage.af_setImage(withURL: url!)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

