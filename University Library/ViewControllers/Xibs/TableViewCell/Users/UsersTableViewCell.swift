//
//  UsersTableViewCell.swift
//  University Library
//
//  Created by Huda M. A'abed on 14/08/2023.
//

import UIKit

class UsersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblUserName: UILabel!
    var object: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configureCell(){
        if let object = self.object{
            lblUserName.text = object
            
        }
    }
}
