//
//  DetailViewController.swift
//  APITest
//
//  Created by RAMESHUZ on 26/04/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var txtView: UITextView!
    var userDescription: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtView.text = userDescription
    }
    
}
