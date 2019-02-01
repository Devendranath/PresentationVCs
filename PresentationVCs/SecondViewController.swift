//
//  SecondViewController.swift
//  PresentationVCs
//
//  Created by apple on 01/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var userName: String?
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func moveBack(_ sender: Any) {
        print(self.presentingViewController)
        
        if let fvc = self.presentingViewController as? ViewController {
            fvc.userNameTF.text = "111111"            
        }
        self.dismiss(animated: true, completion: nil)
//        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let fvc = storyBoard.instantiateViewController(withIdentifier: "FVC")
//        self.present(fvc, animated: true) {
//            print("I moved to FVC succesfully")
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = userName ?? "Hello User"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
