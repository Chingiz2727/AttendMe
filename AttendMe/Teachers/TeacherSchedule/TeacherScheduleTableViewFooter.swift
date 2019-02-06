//
//  TeacherScheduleTableViewFooter.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/6/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import SnapKit
class TeacherScheduleTableViewFooter: UITableViewCell {

    let button = UIButton()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(button)
        button.snp.makeConstraints { (cons) in
            cons.left.equalTo(self).inset(0)
            cons.right.equalTo(self).inset(0)
            cons.top.equalTo(self).inset(0)
            cons.bottom.equalTo(self).inset(0)
        }
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.setTitle("Проверить", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
