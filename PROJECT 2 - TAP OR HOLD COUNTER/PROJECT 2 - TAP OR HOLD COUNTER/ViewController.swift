//
//  ViewController.swift
//  PROJECT 2 - TAP OR HOLD COUNTER
//
//  Created by 张传奇 on 2017/6/26.
//  Copyright © 2017年 张传奇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var ShowLab: UILabel!
    @IBOutlet weak var TapHold: UIButton!
    var myTimer:Timer!
    var showNum:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ShowLab.text = NSString(format:"%d",showNum) as String
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longpressCanBtn(action:)))
        TapHold.addGestureRecognizer(longPress)
    }
    func longpressCanBtn(action:UILongPressGestureRecognizer){
         myTimer.invalidate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TapHoldClick(_ sender: Any) {
   myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    func update() {
       let abc = showNum + 1
        showNum = abc
        ShowLab.text = "\(abc)"
    }

    @IBAction func RessetClick(_ sender: Any) {

        ShowLab.text = "\(0)"
        myTimer.invalidate()
    }
}

