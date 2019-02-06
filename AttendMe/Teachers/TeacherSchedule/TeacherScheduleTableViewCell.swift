//
//  TeacherScheduleTableViewCell.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/5/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit
import M13Checkbox
import SnapKit
class TeacherScheduleTableViewCell: UITableViewCell {
    var name : UILabel = UILabel()
    var checkbox : M13Checkbox = M13Checkbox()
    var changing : (()->Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addview() {
        self.addSubview(name)
        self.addSubview(checkbox)
        let gest = UITapGestureRecognizer.init(target: self, action: #selector(changed))
        self.addGestureRecognizer(gest)
        name.snp.makeConstraints { (cons) in
            cons.left.equalTo(self).inset(10)
            cons.centerY.equalTo(self)
            cons.height.equalTo(40)
            cons.width.equalTo(200)
        }
        self.selectionStyle = .none
        checkbox.snp.makeConstraints { (cons) in
            cons.right.equalTo(self).inset(10)
            cons.centerY.equalTo(self)
            cons.height.equalTo(30)
            cons.width.equalTo(30)
        }
        name.text = "Shyngys Kuandyk"
        name.numberOfLines = 0
        checkbox.boxType = .square
        checkbox.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        checkbox.checkmarkLineWidth = 1
        checkbox.animationDuration = 0.1
    }
    
    
    @objc func changed() {
        changing?()
        print("changed")
        checkbox.toggleCheckState(true)
        
//        checkbox.setCheckState(.mixed, animated: true)
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
