//
//  ProfileViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 24/07/2023.
//

import UIKit

class EmployeeProfileViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
   
    var objects: [Details] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.isHidNavigation = false
        
    }
    @IBAction func btnChangePassword(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "changePasswordViewController")
        vc.push()
    }
}

extension EmployeeProfileViewController {
    func setupView(){
        tableView.registerXib(cell: EmployeeProfileTableViewCell.self)
        
    }
    
    func localized(){
        self.title = "Employee Profile"
    }
    
    func setupData(){
        objects.append(Details.init(key: "Name", value: "Mohammed", colorKey: "22215B", colorValue: "415EB6"))
        objects.append(Details.init(key: "Job Title", value: "Librarian", colorKey: "22215B", colorValue: "415EB6"))
        objects.append(Details.init(key: "UserName", value: "12345678", colorKey: "22215B", colorValue: "415EB6"))
        objects.append(Details.init(key: "Password", value: "Moh1234567", colorKey: "22215B", colorValue: "415EB6"))
    }
    
    func fetchData(){
    }
}



extension EmployeeProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: EmployeeProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: EmployeeProfileTableViewCell.id, for: indexPath) as! EmployeeProfileTableViewCell
        let obj = self.objects[indexPath.row]
        cell.object = obj
        cell.configureCell()
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

