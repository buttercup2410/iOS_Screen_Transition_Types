//
//  SelectEducationViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

class SelectEducationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var response: Response?
    
    @IBAction func cancelBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }

    //onclick listener...    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let demoVC = segue.destination as! DemographicViewController
       
        if segue.identifier == "1"{
            demoVC.edu = "Below High School"
        }
        else if segue.identifier == "2"
        {
            demoVC.edu = "High School"
        }
        else if segue.identifier == "3"
        {
            demoVC.edu = "Bachelor's Degree"
        }
        else if segue.identifier == "4"
        {
            demoVC.edu = "Master's Degree"
        }
        else if segue.identifier == "5"
        {
            demoVC.edu = "Ph.D. or Higher"
        }
        else if segue.identifier == "6"
        {
            demoVC.edu = "Trade School"
        }
        else if segue.identifier == "7"
        {
            demoVC.edu = "Prefer Not to say"
        }
    }
}
