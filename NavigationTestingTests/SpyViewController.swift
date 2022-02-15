//
//  SpyViewController.swift
//  NavigationTestingTests
//
//  Created by Nathaniel Whittington on 2/14/22.
//

import UIKit


class SpyViewController : UINavigationController {
    
    var pushedViewController : UIViewController!
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: true)
        pushedViewController = viewController
    }
    
}
