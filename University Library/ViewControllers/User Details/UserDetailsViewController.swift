//
//  UserDetailsViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 15/08/2023.
//

import UIKit

class UserDetailsViewController: UIViewController {
    
    var selectedUser: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

extension UserDetailsViewController {
    func setupView(){
    }
    
    func localized(){
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension UserDetailsViewController {
    
    
    
}
