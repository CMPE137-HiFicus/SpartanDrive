//
//  ViewController.swift
//  Social login
//
//  Created by KhamTran on 9/18/19.
//  Copyright © 2019 KhamTran. All rights reserved.
//

import UIKit
import FBSDKLoginKit
class ViewController: UIViewController , LoginButtonDelegate{
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        if 	error != nil{
            print("error")
            return
            
        }
        print("successful login with facebook")
    }
    @IBAction func login(_ sender: Any) {
    
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        print("Did log out Facebook")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let loginButton = FBLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 30, y: 300, width: 360, height: 80)
    
    }
	
	
}


