//
//  MenuViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 22/07/2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var imgProfile: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [GlobalConstant.Menu] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         isHidNavigation = true
    }
    
    @IBAction func GesureProfile(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "EmployeeProfileViewController")
        vc.push()
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//         isHidNavigation = false
//
//    }
//
    @IBAction func btnCancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
        
    }
    @IBAction func btnLogout(_ sender: Any) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "LoginViewController")
        vc.push()
    }
    
}
 extension MenuViewController {
    func setupView(){
        imgProfile.cornerRadius = 60
        imgProfile.layer.maskedCorners = userProfile.shared.isRtl ? [.layerMinXMaxYCorner] : [.layerMaxXMaxYCorner]
        tableView.registerXib(cell: MenuTableViewCell.self)
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(GesureProfile))
//        imgProfile.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func localized(){
    }
    
    func setupData(){
        self.objects.removeAll()
        self.tableView.reloadData()
        self.objects.append(.addBook)
        self.objects.append(.addDoctor)
        self.objects.append(.addStudent)
        self.objects.append(.addEmployee)
        self.objects.append(.editBook)
        self.objects.append(.editDoctor)
        self.objects.append(.editStudent)
        self.tableView.reloadData()

    }
    
    func fetchData(){
    }
}



extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.id, for: indexPath) as! MenuTableViewCell
        let obj = self.objects[indexPath.row]
        cell.object = obj
        cell.configureCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = self.objects[indexPath.row]
        self.navigationController?.popViewController(animated: false)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5 ){
        self.dismiss(animated: true){
            switch obj{
            case .addBook:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "AddBookViewController")
                vc.push()
                break
            case .addDoctor:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "AddDoctorViewController")
                vc.push()
                break
            case .addEmployee:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "AddEmployeeViewController")
                vc.push()
                break
            case .addStudent:
                let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "AddStudentViewController")
                vc.push()
                break
            case .editBook:
                break
            case .editDoctor:
                break
            case .editStudent:
                break
                }
            }
        }
    }
    
}

