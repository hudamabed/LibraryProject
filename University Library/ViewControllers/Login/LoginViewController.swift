//
//  LoginViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 19/07/2023.
//

import UIKit
class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    enum PrivilegeLevel: String {
        case employee = "1"
        case doctor   = "2"
        case student  = "3"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.isHidNavigation = true
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        if txtUserName.text?.count ?? 0 == 0{
            showAlertError(message: "UserName is Required")
        }
        if txtPassword.text?.count ?? 0 == 0{
            showAlertError(message: "Password is Required")
        }
        if let username = txtUserName.text, let password = txtPassword.text {
            checkUserType(username: username, password: password)
        }
    }
}
    
    extension LoginViewController {
        func setupView(){
            
        }
        
        func localized(){
            
        }
        
        func setupData(){
        }
        
        func fetchData(){
        }
    }
    
    
    extension LoginViewController {
        func checkUserType(username: String, password: String) {
            if let firstCharacter = username.first {
                switch firstCharacter {
                case "1":
                    if password == "1234" {
                        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "BooksViewController")
                        vc.push()
                    } else {
                        showAlertError(title: "Login Error", message: "The User Name or Password is incorrect")
                    }
                case "2":
                    if password == "2345" {
                        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "BooksViewController")
                        vc.push()
                    } else {
                        showAlertError(title: "Login Error", message: "The User Name or Password is incorrect")
                    }
                case "3":
                    if password == "3456" {
                        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "BooksViewController")
                        vc.push()
                    } else {
                        showAlertError(title: "Login Error", message: "The User Name or Password is incorrect")
                    }
                default:
                    print("Invalid username format")
                }
            }
        }
    }

    
//
//@IBAction func btnLogin(_ sender: Any) {
//    if let username = txtUsername.text, let password = txtPassword.text {
//        checkUserType(username: username, password: password)
//    } else {
//        // Handle empty username or password
//        print("Please enter both username and password")
//    }
//}
