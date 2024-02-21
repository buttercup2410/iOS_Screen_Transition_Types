//
//  IdentificationViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

class IdentificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var response: Response?
    
    @IBOutlet weak var nameLabel: UITextField!
    
    @IBOutlet weak var emailLabel: UITextField!
    
    @IBOutlet weak var roleOutlet: UISegmentedControl!
    
    @IBAction func nextBtn(_ sender: Any) {
        let name:String = nameLabel.text!
        let email:String = emailLabel.text!
        let role = roleOutlet.titleForSegment(at: roleOutlet.selectedSegmentIndex) ?? ""
        
        response = Response(rname: name, remail: email, rrole: role)
        print(name)
        print(email)
        print(role)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if nameLabel.text == "" || emailLabel.text == ""
        {
            let alertController = UIAlertController(
                title: "Error", message: "Please enter data", preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(
                title:"Okay", style: UIAlertAction.Style.destructive)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true)
        }
        else if segue.identifier == "IdenToDemo"
        {
            let idenToDemo = segue.destination as! DemographicViewController
            _ = DemographicViewController()
            idenToDemo.response = response!
        }
    }
}
