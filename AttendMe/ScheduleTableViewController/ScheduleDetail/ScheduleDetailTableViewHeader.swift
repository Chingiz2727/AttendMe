//
//  ScheduleDetailTableViewHeader.swift
//  AttendMe
//
//  Created by Чингиз on 1/30/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit
class ScheduleDetailTableViewHeader: UITableViewCell {
    var teacher = UILabel()
    var lesson = UILabel()
    var img = UIImageView()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addview()
        addstyle()
    }
    
    func addview() {
        self.addSubview(teacher)
        self.addSubview(lesson)
        self.addSubview(img)
        img.snp.makeConstraints { (cons) in
            cons.top.equalTo(self).inset(5)
            cons.centerX.equalTo(self)
            cons.width.equalTo(100)
            cons.height.equalTo(100)
        }
        teacher.snp.makeConstraints { (cons) in
            cons.top.equalTo(img.snp.bottom).offset(10)
            cons.centerX.equalTo(self)
            cons.height.equalTo(30)
            cons.width.equalTo(100)
        }
        lesson.snp.makeConstraints { (cons) in
            cons.top.equalTo(teacher.snp.bottom).offset(5)
            cons.centerX.equalTo(self)
            cons.height.equalTo(30)
            cons.width.equalTo(100)
        }
        lesson.textAlignment = .center
        teacher.textAlignment = .center
        lesson.text = "SDP 9"
        teacher.text = "Arman Myrzakanurov"
    }
    
    
    
    func addstyle() {
        lesson.numberOfLines = 0
        teacher.numberOfLines = 0
        lesson.font = UIFont(name: "Arial", size: 13)
        teacher.font = UIFont(name: "Arial", size: 13)
        img.layer.cornerRadius = 50
        img.layer.masksToBounds = true
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        img.image = UIImage.init(named: "avatar")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
