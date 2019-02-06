//
//  TeacherScheduleTableView.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/5/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import UIKit

class TeacherScheduleTableView: UITableViewController {
    let cellid = "cellid"
    let footer = "footerid"
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.register(TeacherScheduleTableViewCell.self, forHeaderFooterViewReuseIdentifier: cellid)
        tableView.register(TeacherScheduleTableViewCell.self, forCellReuseIdentifier: cellid)
        tableView.register(TeacherScheduleTableViewFooter.self, forCellReuseIdentifier: footer)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellid) as! TeacherScheduleTableViewCell
        
//        cell.checkbox.toggleCheckState(true)
        
    }
    
   override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
  override  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: footer) as! TeacherScheduleTableViewFooter
//    cell.button.addTarget(self, action: #selector(changeall), for: .touchUpInside)
    cell.layer.shadowColor = UIColor.black.cgColor
    cell.layer.shadowOpacity = 0.1
    cell.layer.shadowRadius = 5
        return cell
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
     func changeall() {
        print("cha")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! TeacherScheduleTableViewCell
        cell.changing = changeall
//      Configure the cell...

        return cell
    }
 
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
