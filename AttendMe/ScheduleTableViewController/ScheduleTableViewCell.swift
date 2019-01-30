//
//  ScheduleTableViewCell.swift
//  AttendMe
//
//  Created by Чингиз on 1/24/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit


class ScheduleTableViewCell: UITableViewCell {
    var start_time = UILabel()
    
    var teacher = UILabel()
    var place = UILabel()
    var subject = UILabel()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addView()
        MakeStyle()
        start_time.text = "11:00 - 12:00"
        teacher.text = "Арман Мырзакануров"
        place.text = "504 k."
        subject.text = "SDP 10"
                contentView.frame = CGRect(x: 0, y: 0, width: 100, height:100)
        self.clipsToBounds = true
        layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
     
    }
    func addView() {
        self.addSubview(start_time)
        start_time.snp.makeConstraints { (cons) in
            cons.top.equalTo(self).inset(10)
            cons.left.equalTo(self).inset(30)
        }
        self.addSubview(subject)
        subject.snp.makeConstraints { (cons) in
            cons.top.equalTo(start_time.snp.bottom).offset(5)
            cons.left.equalTo(self).inset(30)
            
        }
        self.addSubview(place)
        place.snp.makeConstraints { (cons) in
            cons.top.equalTo(subject.snp.bottom).offset(5)
            cons.left.equalTo(self).inset(30)
        }
        self.addSubview(teacher)
        teacher.snp.makeConstraints { (cons) in
            cons.top.equalTo(place.snp.bottom).offset(5)
            cons.left.equalTo(self).inset(30)
        }
    
    }
    
    func MakeStyle() {
        self.backgroundColor = #colorLiteral(red: 0, green: 0.5329864621, blue: 0.7231789231, alpha: 1)
        teacher.textColor = UIColor.white
        place.textColor = UIColor.white
        subject.textColor = UIColor.white
        start_time.textColor = UIColor.white
        self.selectionStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}


