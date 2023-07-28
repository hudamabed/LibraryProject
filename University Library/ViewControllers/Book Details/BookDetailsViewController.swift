//
//  BookDetaisViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 24/07/2023.
//

// nnnnnnn
import UIKit
class BookDetailsViewController: UIViewController {
    
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
        isHidNavigation = false

        
    }
}

extension BookDetailsViewController {
    func setupView(){
        tableView.registerXib(cell: BookDetailsTableViewCell.self)
    }
    
    func localized(){
        self.title = "Book Details"
    }
    
    func setupData(){
        objects.append(Details.init(key: "Book Name", value: "Becoming", colorKey: "22215B", colorValue: "415EB6"))
        objects.append(Details.init(key: "Author Name", value: "Michelle Obama", colorKey: "22215B", colorValue: "415EB6"))
        objects.append(Details.init(key: "Published year", value: "2019", colorKey: "22215B", colorValue: "415EB6"))
        objects.append(Details.init(key: "Number of copies", value: "4", colorKey: "22215B", colorValue: "415EB6"))
    }
    
    func fetchData(){
        
    }
}

extension BookDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: BookDetailsTableViewCell = tableView.dequeueReusableCell(withIdentifier: BookDetailsTableViewCell.id, for: indexPath) as! BookDetailsTableViewCell
        let obj = self.objects[indexPath.row]
        cell.object = obj
        cell.configureCell()
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

