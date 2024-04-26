//
//  UITableViewDataSourceMethods.swift
//  APITest
//
//  Created by RAMESHUZ on 25/04/24.
//

import Foundation
import UIKit

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userViewModel.user?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        let user = self.userViewModel.user?[indexPath.row] as? User
        self.configureCell(user: user!, cell: cell)
        return cell
    }
    
    func configureCell(user:User, cell: UserCell) {
        cell.lblId.text = "\(user.id)"
        cell.lblTitle.text = user.title
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        UIView.transition(with: tableView,duration:0.27,options:.transitionCrossDissolve,animations: { () -> Void in
            if let detailVC = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController {
                detailVC.userDescription = self.userViewModel.user?[indexPath.row].body
                self.navigationController?.pushViewController(detailVC, animated: true)
            }
        
        }, completion: nil)
        
    }

}
