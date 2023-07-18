//
//  AddBookViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 24/07/2023.
//

import UIKit

class QuantityViewController: UIViewController {
    
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
    @IBAction func btnAddBook(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "AddBookViewController")
        vc.push()
    }
}

extension QuantityViewController {
    func setupView(){
    }
    
    func localized(){
        self.title = "Add Book"
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension QuantityViewController {
    
    
    
}


