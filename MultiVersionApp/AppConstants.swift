//
//  AppConstants.swift
//  MultiVersionApp
//
//  Created by Kalpesh on 03/04/17.
//  Copyright © 2017 Organization. All rights reserved.
//

import Foundation

enum eAppVersion {
    case project
    case full
    case light
}

let AppVersion : eAppVersion = NSBundle.mainBundle().bundleIdentifier == "com.companyname.FullVersion" ? .full : (NSBundle.mainBundle().bundleIdentifier == "com.companyname.LightVersion") ? .light : .project