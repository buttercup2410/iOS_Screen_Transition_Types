//
//  SelectIncomeViewController.swift
//  Assignment04
//
//  Created by Mohamed Shehab on 2/5/24.
//

import UIKit

class SelectIncomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        response = Response()
    }
    
    var inc = 0
    var response: Response?
    var dataBackDelegate: DataBackDelegate?
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        inc = Int(sender.value)
        switch inc{
        case 0:
            sliderLabel.text = "0 to <25K$"
        case 1:
            sliderLabel.text = ">25K$ to <50K$"
        case 2:
            sliderLabel.text = ">50K$ to <100K$"
        case 3:
            sliderLabel.text = ">100K$ to <200K$"
        case 4:
            sliderLabel.text = ">200K$"
        default:
            sliderLabel.text = ""
        }
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        response?.rincome = sliderLabel.text
        let res = sliderLabel.text
        self.response? = Response(rincome: res)
        self.dataBackDelegate?.sendBack(response: response!)
        dismiss(animated: true)
    }
//    @IBAction func submitBtn(_ sender: Any) {
//        response?.rincome = sliderLabel.text
//        print(response?.rincome ?? "rincome is nil")
//        self.dataBackDelegate?.sendBack(response: response)
//        dismiss(animated: true)
//    }
}
