//
//  ViewController.swift
//  Instagram
//
//  Created by mac on 1/22/21.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        }
    
    
    private func handleNotAuthenticated () {
        //Check Auth Status
    if Auth.auth().currentUser == nil {
         //Show Log in
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated : false) 
    }

}

}
