//
//  ViewController.swift
//  AttendMe
//
//  Created by Чингиз on 1/23/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    var window = UIApplication.shared.keyWindow!
    var mainview : LoginView {return self.view as! LoginView}
    override func viewDidLoad() {
        super.viewDidLoad()
        mainview.login_action = login
    }

   
    override func loadView() {
        self.view = LoginView(frame: UIScreen.main.bounds)
    }
    
    
    private func login() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        window.rootViewController = TeacherTabBar()
    }
}

