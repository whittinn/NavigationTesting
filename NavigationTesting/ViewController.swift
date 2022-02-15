//
//  ViewController.swift
//  NavigationTesting
//
//  Created by Nathaniel Whittington on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let st = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = st.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {
            return
        }
        
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}

