//
//  AppDelegate.swift
//  Reader
//
//  Created by YOUNG on 9/19/15.
//  Copyright © 2015 tux. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        if let splitViewController = window?.rootViewController as? UISplitViewController {
            splitViewController.delegate = self
        }
        
        // Override point for customization after application launch.
        return true
    }

    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return true
    }

}

