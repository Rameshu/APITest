//
//  ViewController.swift
//  APITest
//
//  Created by RAMESHUZ on 25/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblUser: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    let userViewModel = UserViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Get user data
        userViewModel.getUser { success, message in
            DispatchQueue.main.async {
                self.activityIndicator.stopAnimating()
                self.tblUser.reloadData()
            }
        }
    }
}


