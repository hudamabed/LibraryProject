//
//  AddStudentViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 14/08/2023.
//

import UIKit

class AddStudentViewController: UIViewController {
    
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

extension AddStudentViewController {
    func setupView(){
    }
    
    func localized(){
        self.title = "Add New Student"
        
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension AddStudentViewController {
    
    
    
}

/// test 
