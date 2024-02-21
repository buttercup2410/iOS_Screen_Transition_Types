//
//  ProfileViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

class ProfileViewController: UIViewController {

    var response: Response!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var roleLabel: UILabel!
    
    @IBOutlet weak var educationLabel: UILabel!
    
    @IBOutlet weak var maritalLabel: UILabel!
    
    @IBOutlet weak var livingLabel: UILabel!
    
    @IBOutlet weak var incomeLabel: UILabel!
    
    func updateUI(){
        self.nameLabel.text = response.rname
        self.emailLabel.text = response.remail
        self.roleLabel.text = response.rrole
        self.educationLabel.text = response.reducation
        self.maritalLabel.text = response.rmaritalStatus
        self.livingLabel.text = response.rliving
        self.incomeLabel.text = response.rincome
    }
}
