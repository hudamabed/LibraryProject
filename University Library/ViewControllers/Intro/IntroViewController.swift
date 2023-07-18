//
//  ViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 18/07/2023.
//

import UIKit
class IntroViewController: UIViewController {
    
    
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
    
    override func viewDidLayoutSubviews() {
        
    }
    @IBAction func btnGetStarted(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "LoginViewController")
        vc.push()
    }
}

extension IntroViewController {
    func setupView(){
    }
    
    func localized(){
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension IntroViewController {
    
    
    
}
