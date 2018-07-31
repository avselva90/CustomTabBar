//
//  TabBarController.swift
//  TabBarController
//
//  Created by Selva on 18/08/17.
//  Copyright © 2017 optisol. All rights reserved.
//

import UIKit

class TabBarController:  UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    func listTabBarController() -> UITabBarController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // Set up the first View Controller
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        firstViewController.view.backgroundColor = UIColor.white
        firstViewController.tabBarItem.title = "First"
        firstViewController.tabBarItem.image = UIImage(named: "Dashboard")
        firstViewController.tabBarItem.selectedImage = UIImage(named: "triplogINACTIVE")
        let firstViewNavigation = UINavigationController(rootViewController: firstViewController)
        
        // Set up the second View Controller
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.view.backgroundColor = UIColor.white
        secondViewController.tabBarItem.title = "Second"
        secondViewController.tabBarItem.image = UIImage(named: "Part Order")
        secondViewController.tabBarItem.selectedImage = UIImage(named: "PartRequestINACTIVE")
        secondViewController.tabBarItem.badgeColor = UIColor.black
        let secondViewNavigation = UINavigationController(rootViewController: secondViewController)
        
        // Set up the Tab Bar Controller to have two tabs
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstViewNavigation, secondViewNavigation]
        return tabBarController
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //print("Selected \(viewController.title!)")
    }
}
