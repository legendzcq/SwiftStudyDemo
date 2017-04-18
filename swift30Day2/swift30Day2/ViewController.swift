//
//  ViewController.swift
//  swift30Day2
//
//  Created by legend on 2017/4/18.
//  Copyright © 2017年 legendzcq. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Gender: UISegmentedControl!
    @IBOutlet weak var BrithDay: UIDatePicker!
    @IBOutlet weak var Work: UITextField!

    @IBOutlet weak var Straight: UISwitch!
    @IBOutlet weak var Salary: UISlider!
    
    @IBOutlet weak var SalaryShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SalaryValueChange(_ sender: Any) {
        let slider = (sender as! UISlider)
        let i = Int(slider.value)
        SalaryShow.text = "\(i)"
    }
    @IBAction func Straight(_ sender: UISwitch) {
        print(sender.isOn)
    }


//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }

    @IBAction func TwitterBtnClick(_ sender: Any) {
        print(Work.text!)
        showAlert("tishi", message: "fuck fuck fuck ", btnTitle: "ok")
    }
    
    func showAlert(_ title:String, message:String,btnTitle:String) -> Void {
        let showAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        showAlert.addAction(UIAlertAction(title: btnTitle, style: .default, handler: { (UIAlertAction) in
            print("asdf")
        }))
        self.present(showAlert, animated: true, completion: nil)
        
    }
    
    
    

}



