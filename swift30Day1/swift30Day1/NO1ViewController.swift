//
//  NO1ViewController.swift
//  swift30Day1
//
//  Created by legend on 2017/4/14.
//  Copyright © 2017年 legendzcq. All rights reserved.
//

import UIKit

class NO1ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableview :UITableView? = nil
    let cellID = "CellID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.yellow
        
        tableview = UITableView(frame: view.frame, style: .plain)
        tableview?.delegate = self
        tableview?.dataSource = self
        tableview?.rowHeight = 60.0
        tableview?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellID)
//        可以编辑
        tableview?.setEditing(true, animated: true)
        view .addSubview(tableview!)
        tableview?.tableFooterView=UIView()
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) 
        cell.textLabel!.text = "fucl\(arc4random())"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let tempcon = No2ViewController()
        navigationController?.pushViewController(tempcon, animated: true)
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    // 允许移动某行（排序）
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
