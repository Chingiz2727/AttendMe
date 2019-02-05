//
//  MyTeacherTableViewCell.swift
//  AttendMe
//
//  Created by Чингиз on 1/28/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit

class MyTeacherTableViewCell: UITableViewCell {
    var name = UILabel()
    var teacher = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func addview() {
        self.addSubview(name)
        self.addSubview(teacher)
        name.snp.makeConstraints { (cons) in
            cons.top.equalTo(self).inset(10)
            cons.left.equalTo(self).inset(10)
            cons.bottom.equalTo(self).inset(10)
            cons.width.equalTo(100)
        }
        name.numberOfLines = 0
        
        teacher.snp.makeConstraints { (cons) in
            cons.top.equalTo(self).inset(10)
            cons.right.equalTo(self).inset(10)
            cons.bottom.equalTo(self).inset(10)
            cons.width.equalTo(100)
        }
        teacher.numberOfLines = 0
        
        name.font = UIFont(name: "Arial", size: 13)
        teacher.font = UIFont(name: "Arial", size: 13)
        name.text = "SDP 9 "
        teacher.text = "Arman Myrzakanurov"
        self.selectionStyle = .none
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
