//
//  LoginView.swift
//  AttendMe
//
//  Created by Чингиз on 1/23/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
    var login_textf = UITextField()
    var password_textf = UITextField()
    var sign_in_button = UIButton()
    var login_action: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    addview()
    }
    
    
    
    private func addview() {
        self.addSubview(login_textf)
        self.addSubview(password_textf)
        self.addSubview(sign_in_button)
        login_textf.placeholder = "Логин"
        password_textf.placeholder = "Пароль"
        login_textf.snp.makeConstraints { (cons) in
            cons.top.equalTo(self).inset(140)
            cons.left.equalTo(self).inset(50)
            cons.right.equalTo(self).inset(50)
     
            cons.height.equalTo(40)
        }
        
        password_textf.snp.makeConstraints { (cons) in
            cons.centerX.equalTo(login_textf)
            cons.width.equalTo(200)
            cons.height.equalTo(40)
            cons.top.equalTo(login_textf.snp.bottom).offset(10)
            cons.left.equalTo(self).inset(50)
            cons.right.equalTo(self).inset(50)
        }
        
        sign_in_button.snp.makeConstraints { (cons) in
            cons.height.equalTo(40)
            cons.top.equalTo(password_textf.snp.bottom).offset(10)
            cons.left.equalTo(self).inset(70)
            cons.right.equalTo(self).inset(70)
        }
        sign_in_button.setTitle("Войти", for: .normal)
        sign_in_button.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        sign_in_button.layer.cornerRadius = 6
        sign_in_button.backgroundColor = #colorLiteral(red: 0.3388620767, green: 0.7652582018, blue: 1, alpha: 1)
        login_textf.layer.cornerRadius = 6
        login_textf.layer.borderWidth = 1
        login_textf.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        login_textf.textAlignment = .center
        password_textf.textAlignment = .center
        password_textf.layer.cornerRadius = 6
        password_textf.layer.borderWidth = 1
        password_textf.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        password_textf.isSecureTextEntry = true
        sign_in_button.addTarget(self, action: #selector(login), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func login() {
        login_action?()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
