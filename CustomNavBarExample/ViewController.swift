//
//  ViewController.swift
//  CustomNavBarExample
//
//  Created by Soemsak on 16/5/2562 BE.
//  Copyright © 2562 Moohow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.titleView = navTitleWithImageAndText(titleText: "Large Text", messageText: "Small Text", imageName: "profile_circle")
        self.navigationItem.titleView = NavBarExtension().navTitleWithImageAndText(titleText: "Large Text", messageText: "Small Text", imageName: "profile_circle")
    }
    
}

