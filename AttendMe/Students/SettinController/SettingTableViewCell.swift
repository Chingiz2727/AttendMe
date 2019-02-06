//
//  SettingTableViewCell.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/4/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    var left : UIButton = UIButton()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(left)
        left.snp.makeConstraints { (cons) in
            cons.top.equalTo(self).inset(0)
            cons.left.equalTo(self).inset(0)
            cons.right.equalTo(self).inset(0)
            cons.bottom.equalTo(self).inset(0)
        }
        left.setTitle("Выйти", for: .normal)
        left.setTitleColor(UIColor.white, for: .normal)
        left.backgroundColor = #colorLiteral(red: 0, green: 0.5333333333, blue: 0.7215686275, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
