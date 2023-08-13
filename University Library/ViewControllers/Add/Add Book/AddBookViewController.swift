//
//  AddBookViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 24/07/2023.
//

import UIKit

class AddBookViewController: UIViewController {
    
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

extension AddBookViewController {
    func setupView(){
    }
    
    func localized(){
        self.title = "Add New Book"
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension AddBookViewController {
    
    
    
}
