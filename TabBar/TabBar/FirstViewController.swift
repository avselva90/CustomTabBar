//
//  FirstViewController.swift
//  TabBar
//
//  Created by Selva on 21/08/17.
//  Copyright © 2017 optisol. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "First"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
        let thiredViewController = storyboard?.instantiateViewController(withIdentifier: "ThiredViewController") as! ThiredViewController
        self.navigationController?.pushViewController(thiredViewController, animated: true)
    }
}

