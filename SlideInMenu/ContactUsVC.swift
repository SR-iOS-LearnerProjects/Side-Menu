//
//  ContactUsVC.swift
//  SlideInMenu
//
//  Created by Sridatta Nallamilli on 02/01/20.
//  Copyright © 2020 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let reveal: SWRevealViewController = revealViewController()
        reveal.tapGestureRecognizer()
         menuButton.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: UIControl.Event.touchUpInside)
        
    }
    
    @IBAction func goHome(_ sender: UIButton) {
        let home = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! ViewController
        self.revealViewController()?.pushFrontViewController(home, animated: true)
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
