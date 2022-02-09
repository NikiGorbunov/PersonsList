//
//  ViewController.swift
//  PersonsList
//
//  Created by Никита Горбунов on 09.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        let personListVC = viewControllers?.first as! PersonListViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        personListVC.persons = persons
        sectionVC.persons = persons
    }
}
