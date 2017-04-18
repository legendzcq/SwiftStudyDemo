//
//  NO1ViewController.swift
//  swift30Day1
//
//  Created by legend on 2017/4/14.
//  Copyright © 2017年 legendzcq. All rights reserved.
//

import UIKit

class NO1ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var mytextfiel: UITextField!
    var abc = "asdfsdf"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.yellow
        myLabel.text = abc
        myLabel.textColor = UIColor.red
        myLabel.textAlignment = NSTextAlignment.center
        
        
        mybutton.titleLabel?.text = "fuck you"
        mybutton.sizeToFit()
        mybutton.addTarget(self, action: #selector(self.tempabc), for: .touchUpInside)
        
        
        
    }
    func tempabc() {
        print("asdfsadfasdfsdfsad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
   {
      print(textField.text!)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
