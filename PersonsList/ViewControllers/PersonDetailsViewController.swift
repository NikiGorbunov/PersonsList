//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by Никита Горбунов on 09.02.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.mail)"
        phoneNumberLabel.text = "Phone: \(person.phone)"
    }

}
