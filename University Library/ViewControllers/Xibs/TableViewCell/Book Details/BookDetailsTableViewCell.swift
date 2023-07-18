//
//  BookDetailsTableViewCell.swift
//  University Library
//
//  Created by Huda M. A'abed on 25/07/2023.
//

import UIKit

class BookDetailsTableViewCell: UITableViewCell {

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
            lblValue.text = object.value
            lblKey.textColor = UIColor(named: object.colorKey ?? "")
            lblValue.textColor = UIColor(named: object.colorValue ?? "")
            
        }
    }
    
}
