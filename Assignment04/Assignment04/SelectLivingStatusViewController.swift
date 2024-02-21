//
//  SelectLivingStatusViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

class SelectLivingStatusViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    var response: Response?
    
    @IBAction func cancelBtn(_ sender: Any) {
        if presentingViewController != nil {
            dismiss(animated: true)
        }
    }
    
    @IBAction func livingStatusSelected(_ sender: UIButton) {
        guard let livingStatus = sender.titleLabel?.text else {
            return
        }
        NotificationCenter.default.post(name: .livingStatusSelected, object: nil, userInfo: ["Submitted Living Status": livingStatus])
        dismiss(animated: true)
    }
}

extension Notification.Name {
    static let livingStatusSelected = Notification.Name("LivingStatusSelected")
}
