//
//  AddEmployeeViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 26/07/2023.
//

import UIKit


class AddDoctorViewController: UIViewController {
    
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

extension AddDoctorViewController {
    func setupView(){
    }
    
    func localized(){
        self.title = "Add New Doctor"

    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension AddDoctorViewController {
    
    
    
}

