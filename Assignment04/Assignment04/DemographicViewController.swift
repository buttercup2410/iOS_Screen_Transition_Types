//
//  DemographicViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

protocol DataBackDelegate {
    func sendBack(response: Response)
}

class DemographicViewController: UIViewController {

    var response: Response?
    var edu:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(OnRecieveNotification(notification:)), name: Notification.Name("Submitted Marital Status"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(livingStatusSelected(_:)), name: .livingStatusSelected, object: nil)
    }

    @IBOutlet weak var eduLabel: UILabel!
    
    @IBOutlet weak var mariLabel: UILabel!
    
    @IBOutlet weak var livLabel: UILabel!
    
    @IBOutlet weak var incLabel: UILabel!

    @IBAction func nextBtn(_ sender: Any) {
        response?.reducation = eduLabel.text
        response?.rmaritalStatus = mariLabel.text
        response?.rliving = livLabel.text
        response?.rincome = incLabel.text
        
        if response?.reducation == "N/A" || response?.rmaritalStatus == "N/A" || response?.rliving == "N/A" || response?.rincome == "N/A" {
                    let alert = UIAlertController(title: "Error", message: "Please select all fields", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                    alert.addAction(okAction)
                    present(alert, animated: true, completion: nil)
        }
        else {
            performSegue(withIdentifier: "DemoToProfile", sender: self)
        }
    }
    
    @IBAction func myUnwindFunction(unwindSegue: UIStoryboardSegue){
        if unwindSegue.source is SelectEducationViewController {
            print("Submitted Education using Unwind Segue")
            print(edu!)
            if self.edu != nil{
                eduLabel.text = edu!
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DemoToIncome" {
            if let selectIncomeVC = segue.destination as? SelectIncomeViewController {
                selectIncomeVC.dataBackDelegate = self
            }
        }
        else if segue.identifier == "DemoToProfile"{
            let demoToProfile = segue.destination as! ProfileViewController
            demoToProfile.response = response
        }
    }
  
    @objc func OnRecieveNotification(notification: Notification){
        print("Submitted Marital Status")
        if let selectedMaritalStatus = notification.object as? String {
                print(selectedMaritalStatus)
                mariLabel.text = selectedMaritalStatus
        }
    }
    
    @objc func livingStatusSelected(_ notification: Notification) {
        print("Submitted Living Status")
        if let status = notification.userInfo?["Submitted Living Status"] as? String {
            print(status)
//            response?.rliving = status
            livLabel.text = status
        }
    }
}

extension DemographicViewController: DataBackDelegate {
    func sendBack(response: Response) {
        if let income = response.rincome {
            self.incLabel.text = income
            print("Submitted Income Status using Protocol and Delegate")
            print(incLabel.text!)
        } else {
            self.incLabel.text = "N/AA"
        }
    }
}
