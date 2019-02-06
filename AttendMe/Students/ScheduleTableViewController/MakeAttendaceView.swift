//
//  MakeAttendaceView.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/5/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit



class MakeAttendaceView: UIView {
    var titlelabel : UILabel = UILabel()
    var qrlabel : UILabel = UILabel()
    var img : UIImageView = UIImageView()
    var go_attendace : (()->Void)?
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        addview()
        self.backgroundColor = UIColor.white
    }
    func addview() {
        self.addSubview(titlelabel)
        self.addSubview(img)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(go))
        img.addGestureRecognizer(gesture)
        
        titlelabel.snp.makeConstraints { (cons) in
            cons.left.equalTo(self).inset(20)
            cons.right.equalTo(self).inset(20)
            cons.top.equalTo(self).inset(2)
            cons.height.equalTo(100)
        }
        titlelabel.numberOfLines = 0
        titlelabel.textAlignment = .center
        titlelabel.text = "Вы еще не отметились \nнажмите значок чтобы отметиться"
        img.snp.makeConstraints { (cons) in
            cons.top.equalTo(titlelabel.snp.bottom).offset(20)
            cons.width.equalTo(150)
            cons.height.equalTo(150)
            cons.centerX.equalTo(self)
        }
        img.isUserInteractionEnabled = true
        img.contentMode = .scaleAspectFit
        img.image = #imageLiteral(resourceName: "QRCode")
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func go() {
        go_attendace?()
    }
}
