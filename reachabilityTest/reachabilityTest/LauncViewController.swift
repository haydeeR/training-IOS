//
//  ViewController.swift
//  reachabilityTest
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    let network: NetworkManager = NetworkManager.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        // If the network is unreachable show the offline page
        NetworkManager.isUnreachable { _ in
            self.showOfflinePage()
        }
        NetworkManager.isReachable { _ in
            self.showMainPage()
        }
        
    }
    
    private func showOfflinePage() -> Void {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "NetworkUnavailable", sender: self)
        }
    }

    private func showMainPage() -> Void {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "MainController", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
