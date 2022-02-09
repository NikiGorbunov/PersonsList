//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Никита Горбунов on 04.02.2022.
//

import UIKit


class PersonListViewController: UITableViewController {
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonDetailsViewController
            detailVC.person = persons[indexPath.row]
        }
        
    }

}
