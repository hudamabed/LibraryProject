//
//  MenuTableViewCell.swift
//  University Library
//
//  Created by Huda M. A'abed on 22/07/2023.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    var object: GlobalConstant.Menu?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(){
        if let object = self.object {
            lblTitle.text = object.name

        }
    }
}



