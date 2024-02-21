//
//  SelectMaritalStatusViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

class SelectMaritalStatusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func cancelmarital(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBOutlet var MaritalStatus: UISegmentedControl!
    
    @IBAction func marsubmitbtn(_ sender: Any) {
        let selectedMaritalStatus = MaritalStatus.titleForSegment(at: MaritalStatus.selectedSegmentIndex)
        NotificationCenter.default.post(name:Notification.Name("Submitted Marital Status"), object:selectedMaritalStatus)
            self.dismiss(animated: true)
        
    }
}
