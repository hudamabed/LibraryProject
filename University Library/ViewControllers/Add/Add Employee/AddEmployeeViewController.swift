//
//  AddEmployeeViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 28/07/2023.

import UIKit

class AddEmployeeViewController: UIViewController {
    
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

extension AddEmployeeViewController {
    func setupView(){
    }
    
    func localized(){
        self.title = "Add New Employee"
        
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension AddEmployeeViewController {
    
    
    
}


