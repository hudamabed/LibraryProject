
//
//  UsersViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 13/08/2023.
//

import UIKit

class UsersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [(header: Any, items: [Any])] = []

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

extension UsersViewController {
    func setupView(){
        tableView.registerXib(cell: UsersTableViewCell.self)
    }
    
    func localized(){
        self.title = "Users"
    }
    
    func setupData(){
        objects.removeAll()
        objects.append((header: "Employee", items: ["Mohammed", "Huda", "Manar"]))
        objects.append((header: "Doctor", items: ["Ahmed", "Afnan", "Yara"]))
        objects.append((header: "Student", items: ["Hema", "Omar", "Tulip"]))
        tableView.reloadData()
    }
    
    func fetchData(){
    }
}



extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let obj = objects[section]
        return obj.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UsersTableViewCell = tableView.dequeueReusableCell(withIdentifier: UsersTableViewCell.id, for: indexPath) as! UsersTableViewCell
        let obj = self.objects[indexPath.section].items[indexPath.row] as? String
        cell.object = obj 
        cell.configureCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = Users()
        let obj = objects[section].header as? String
        view.userType = obj
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         40
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
         50
    }
    
}
