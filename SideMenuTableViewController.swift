//
//  SideMenuTableViewController.swift
//  SlideInMenu
//
//  Created by Sridatta Nallamilli on 02/01/20.
//  Copyright © 2020 Sridatta Nallamilli. All rights reserved.
//

import UIKit

struct menuDataModel {
    var Menu: String
}

class SideMenuTableViewController: UITableViewController {

    @IBOutlet var sideMenuTableView: UITableView!
    
    var menuItems = ["Home", "About", "Services", "Contact Us", "Settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
//        return 0
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
//        return 0
        
        return menuItems.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuItemTableViewCell
        cell.menuItemLabel.text = menuItems[indexPath.row]
//        cell.textLabel?.text = menuItems[indexPath.row]
//        cell.textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            let vc0 = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! ViewController
            self.revealViewController()?.pushFrontViewController(vc0, animated: true)
        }
        else if indexPath.row == 1 {
            let vc1 = self.storyboard?.instantiateViewController(identifier: "AboutVC") as! AboutVC
            self.revealViewController()?.pushFrontViewController(vc1, animated: true)
        }
        else if indexPath.row == 2 {
            let vc1 = self.storyboard?.instantiateViewController(identifier: "ServicesVC") as! ServicesVC
            self.revealViewController()?.pushFrontViewController(vc1, animated: true)
        }
        else if indexPath.row == 3 {
            let vc2 = self.storyboard?.instantiateViewController(identifier: "ContactUsVC") as! ContactUsVC
            self.revealViewController()?.pushFrontViewController(vc2, animated: true)
        }
        else if indexPath.row == 4 {
            let vc3 = self.storyboard?.instantiateViewController(identifier: "SettingsVC") as! SettingsVC
            self.revealViewController()?.pushFrontViewController(vc3, animated: true)
        }
        
//        for i in 0..<menuItems.count {
//            if menuItems[indexPath.row] == "0" {
//                let vc = self.storyboard?.instantiateViewController(identifier: "AboutVC") as! AboutVC
//                self.revealViewController()?.pushFrontViewController(vc, animated: true)
////                UIStoryboardSegue.init(identifier: "AboutVC", source: self, destination: vc)
//
////                self.navigationController?.pushViewController(vc, animated: true)
//            }
//            else if menuItems[indexPath.row] == "1" {
//                let vc = self.storyboard?.instantiateViewController(identifier: "ServicesVC") as! ServicesVC
//                self.navigationController?.pushViewController(vc, animated: true)
//            }
//            else if menuItems[indexPath.row] == "2" {
//                let vc = self.storyboard?.instantiateViewController(identifier: "ContactUsVC") as! ContactUsVC
//                self.navigationController?.pushViewController(vc, animated: true)
//            }
//            else if menuItems[indexPath.row] == "3" {
//                let vc = self.storyboard?.instantiateViewController(identifier: "SettingsVC") as! SettingsVC
//                self.navigationController?.pushViewController(vc, animated: true)
//            }
            
//        }
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
