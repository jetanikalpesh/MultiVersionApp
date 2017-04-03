//
//  ViewController.swift
//  MultiVersionApp
//
//  Created by Kalpesh on 03/04/17.
//  Copyright © 2017 Organization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lableVersionName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Select Project
        //2. Add New Target to App Called LightVersion & FullVersion
        
        //3. Make Resources like current File Structure of this project to use single file code logic for your project.
            // ----- ToDo : Select File > File Inspector > Select your target in which you want to access current selected file.
        
        //4. Note : Each target should have targeted controllers unique. else if will show error of "Redeclaration of Controller" or "Dulplicate resource Exist"
            //So Remove duplicate from code or target.
        
        print("Version ==>> \(AppVersion)")
        
        switch AppVersion {
        case .full:
            print("Full Version")
            lableVersionName.text = "Full Vesion"
            self.view.backgroundColor = UIColor.greenColor()
        case .light:
            print("Light Version")
            lableVersionName.text = "Light Vesion"
            self.view.backgroundColor = UIColor.yellowColor()
        case .project:
            lableVersionName.text = "Common Vesion"
            self.view.backgroundColor = UIColor.grayColor()
            print("project code")
        }
        
        //5. Select Target for runing
            // See on top left of XCode Editor > besie run/stop button select your target name.
            //Here Select MultiVersionApp > Select your required Target to Run Or Build ...
       
        //Enjoy Development...
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

