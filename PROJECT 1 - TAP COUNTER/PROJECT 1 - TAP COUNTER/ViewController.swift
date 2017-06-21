//
//  ViewController.swift
//  PROJECT 1 - TAP COUNTER
//
//  Created by legend on 2017/6/21.
//  Copyright © 2017年 legend. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var SnumLab:UILabel = UILabel()
    override func viewDidLoad() {
           let numCount:Int = 0
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let resbtn:UIButton = UIButton(type: .system)
        resbtn.frame = CGRect(x:10,y:30,width:40,height:30)
        resbtn.setTitle("reset", for: .normal)
        resbtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        resbtn.addTarget(self,action:#selector(resbtnClick),for:.touchUpInside)
        self.view.addSubview(resbtn)
        resbtn.sizeToFit()
        
        let titleLab:UILabel = UILabel(frame: CGRect(x: 150, y: 30, width: 100, height: 30))
        titleLab.text = "Count"
        titleLab.font = UIFont.systemFont(ofSize: 16)
        titleLab.textColor = UIColor.red
        self.view.addSubview(titleLab)
        
        let numLab:UILabel = UILabel(frame: CGRect(x: 150, y: 150, width: 100, height: 200))
        numLab.text = "\(numCount)"
        numLab.font = UIFont.systemFont(ofSize: 100)
        numLab.textColor = UIColor.blue
        self.view.addSubview(numLab)
        numLab.sizeToFit()
        SnumLab = numLab
        
        
        let tap:UIButton = UIButton(type: .system)
        tap.frame = CGRect(x:150,y:300,width:40,height:30)
        tap.setTitle("tap", for: .normal)
        tap.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        tap.addTarget(self,action:#selector(tapClick),for:.touchUpInside)
        self.view.addSubview(tap)
        tap.sizeToFit()
    }
    func resbtnClick() {
        SnumLab.text = "\(0)"
        SnumLab.sizeToFit()
    }
    func tapClick(){
        
        print(SnumLab.text ?? "1")
        
        var tempint:Int? = Int(SnumLab.text!)
        SnumLab.text = "\(tempint!+1)"
        SnumLab.sizeToFit()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

