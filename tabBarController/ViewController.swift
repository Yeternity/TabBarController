//
//  ViewController.swift
//  tabBarController
//
//  Created by seirra on 2017/4/25.
//  Copyright © 2017年 seirra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建一个button
        let button = UIButton(type: .system)
        //设置位置与大小
        button.frame = CGRect(x:80, y: 150, width: 200, height: 200)
        //设置普通状态下的文字
        button.setTitle("Enter WeChat", for: .normal)
        //设置按钮文字的字体和大小
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        //按钮触摸点击事件响应
        button.addTarget(self, action: #selector(ViewController.tapped), for: .touchUpInside)
        //将按钮加入视图
        self.view.addSubview(button)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //点击方法，转到MainViewController视图
    func tapped(){
        self.present(MainViewController(), animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

