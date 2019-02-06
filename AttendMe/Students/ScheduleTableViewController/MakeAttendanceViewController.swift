//
//  MakeAttendanceViewController.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/5/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit

class MakeAttendanceViewController: UIViewController {
    var attendaceview : MakeAttendaceView {  return self.view as! MakeAttendaceView}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        attendaceview.go_attendace = pushattendance
        // Do any additional setup after loading the view.
    }
    func pushattendance() {
        navigationController?.pushViewController(CheckMe(), animated: true)
    }
    override func loadView() {
        self.view = MakeAttendaceView(frame: UIScreen.main.bounds)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
