//
//  EmployeeProfileTableViewCell.swift
//  University Library
//
//  Created by Huda M. A'abed on 26/07/2023.
//

import UIKit

class EmployeeProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblValue: UILabel!
    @IBOutlet weak var lblKey: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(){
        if let object = self.object as? Details {
            lblKey.text = object.key
            lblKey.textColor = UIColor(named: object.colorKey ?? "")
            lblValue.textColor = UIColor(named: object.colorValue ?? "")
            
            if object.key == "Password"{
            let passwordLength = object.value?.count ?? 0
                self.lblValue.text = String(repeating: "•", count: passwordLength)
            } else {
                lblValue.text = object.value
            }
        }
        
    }
    
}
