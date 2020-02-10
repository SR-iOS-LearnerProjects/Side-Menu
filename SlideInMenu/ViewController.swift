//
//  ViewController.swift
//  SlideInMenu
//
//  Created by Sridatta Nallamilli on 02/01/20.
//  Copyright © 2020 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var notificationButton: UIButton!
    
    //@IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        sideMenu()
        customNavBar()
        
        
        let reveal: SWRevealViewController = revealViewController()
            reveal.tapGestureRecognizer()
             menuButton.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: UIControl.Event.touchUpInside)
        notificationButton.addTarget(revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)), for: UIControl.Event.touchUpInside)
        
        
    }
    
    func sideMenu() {
        revealViewController()?.rearViewRevealWidth = 240
    }
    
    func customNavBar() {
        
        navigationController?.navigationBar.tintColor = UIColor(cgColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        navigationController?.navigationBar.tintColor = UIColor(cgColor: #colorLiteral(red: 0.9372549057, green: 0.5, blue: 0.1921568662, alpha: 1))

    }

}



