//
//  TabBarViewController.swift
//  TabbarController
//
//  Created by Hoàng Khánh on 4/11/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
class TeacherTabBar: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let mainpage = UINavigationController.init(rootViewController: ScheduleTableView())
        mainpage.title = "Расписание"
        let news = UINavigationController.init(rootViewController: SettingTableView())
        let schedule = UINavigationController.init(rootViewController: MyTeacherTableViewController())
        
        mainpage.tabBarItem = UITabBarItem(title: "Расписание", image: nil, tag: 0)
        schedule.tabBarItem = UITabBarItem(title: "Мои уроки", image: nil, tag: 1)
        news.tabBarItem = UITabBarItem(title: "Настройки", image: nil, tag: 2)
        viewControllers = [mainpage,news,schedule]
        self.selectedIndex = 0
        navigationItem.title = "Главная"
        self.selectedViewController = mainpage
        self.tabBar.tintColor = .black
        tabBar.isTranslucent = false
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            navigationItem.title = "Расписание"
            tabBar.tintColor = .black
            tabBar.backgroundColor = UIColor.black
            break
        case 1:
            navigationItem.title = "Мои Уроки"
            tabBar.tintColor = .black
            break
        case 2:
            navigationItem.title = "Настройки"
            tabBar.tintColor = .black
            break
        default:
            break
        }
    }
    
}
