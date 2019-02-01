//
//  ViewController.swift
//  PresentationVCs
//
//  Created by apple on 01/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    
    @IBAction func moveToTwo(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let svc = storyBoard.instantiateViewController(withIdentifier: "SVC") as! SecondViewController
        svc.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        svc.userName = userNameTF.text ?? ""
        self.present(svc, animated: true) {
            print("I moved to SVC succesfully")
        }
    }
    
}

