//
//  MainViewController.swift
//  tabBarController
//
//  Created by seirra on 2017/4/25.
//  Copyright © 2017年 seirra. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //声明6个视图
        let firstView = UIViewController()
        firstView.title = "Chats"   //设置视图名称
        firstView.view.backgroundColor = UIColor.blue   //设置视图背景颜色
        
        let secondView = UIViewController()
        secondView.title = "Contacts"
        secondView.view.backgroundColor = UIColor.yellow
        
        let thirdView = UIViewController()
        thirdView.title = "Discover"
        thirdView.view.backgroundColor = UIColor.purple
        
        let fourthView = UIViewController()
        fourthView.title = "Me"
        fourthView.view.backgroundColor = UIColor.white
        
//        let fifthView = UIViewController()
//        fifthView.title = "additionalViewOne"
//        fifthView.view.backgroundColor = UIColor.green
//        
//        let sixthView = UIViewController()
//        sixthView.title = "additionalViewTwo"
//        sixthView.view.backgroundColor = UIColor.cyan
        
        
        //声明6个视图控制器
        let first = UINavigationController(rootViewController: firstView)
        first.tabBarItem.image = UIImage(named:"chats") //自定义tabBarItem的图片
        first.tabBarItem.badgeValue = "1"   //添加标记
        
        let second = UINavigationController(rootViewController:secondView)
        second.tabBarItem.image = UIImage(named: "contacts")
        
        let third = UINavigationController(rootViewController: thirdView)
        third.tabBarItem.image = UIImage(named: "discover")
        
        let fourth = UINavigationController(rootViewController:fourthView)
        fourth.tabBarItem.image = UIImage(named: "me")
        
//        let fifth = UINavigationController(rootViewController: fifthView)   //使用系统自带的tabBarItem
//        fifth.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
//        
//        let sixth = UINavigationController(rootViewController: sixthView)
//        sixth.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
//        
        
        //设置tabBar被选中时的颜色
        UITabBar.appearance().tintColor = UIColor.green
        
        //将视图添加到tabBarController
        self.viewControllers = [first, second, third, fourth]
        //self.setViewControllers([first, second, third, fourth, fifth, sixth], animated: true)
        
        //自己添加more
        //self.viewControllers = [first, second ,third, moreNavigationController]
        
        //设置打开时第一个显示的界面
        //self.selectedIndex = 2
        self.selectedViewController = second
        
        //设置用户可以自己管理的视图
        //self.customizableViewControllers = [first, second]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
