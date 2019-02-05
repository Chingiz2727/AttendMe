//
//  ScheduleDetailTableViewCell.swift
//  AttendMe
//
//  Created by Чингиз on 1/30/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit
class ScheduleDetailTableViewCell: UITableViewCell {
    var data : UILabel = UILabel()
    var attend : UILabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.addSubview(data)
        self.addSubview(attend)
        data.snp.makeConstraints { (cons) in
            cons.left.equalTo(self).inset(10)
            cons.centerY.equalTo(self)
            cons.width.equalTo(200)
            cons.height.equalTo(40)
        }
        attend.snp.makeConstraints { (cons) in
            cons.centerY.equalTo(self)
            cons.width.equalTo(100)
            cons.height.equalTo(40)
            cons.right.equalTo(self).inset(10)
        }
        attend.textAlignment = .right
        attend.text = "Был"
        data.text = "11.02.2019"
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
