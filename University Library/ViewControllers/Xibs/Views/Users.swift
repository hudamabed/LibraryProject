//
//  Users.swift
//  University Library
//
//  Created by Huda M. A'abed on 14/08/2023.
//

import Foundation
import UIKit

class Users: UIView{
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lblUserType: UILabel!
    
    var object: Any?
    var userType: String?{
        set{
            self.lblUserType.text = newValue
        }
        get{
            return lblUserType.text
        }
        
    }
    
    override init(frame: CGRect) {
        super.init (frame: frame)
        configureXib()
    }
    required init? (coder aDecoder: NSCoder) {
        super.init (coder: aDecoder)
        configureXib()
    }
    private func configureXib(){
        Bundle.main.loadNibNamed ("Users", owner: self, options: [:])
        contentView.autoresizingMask = [.flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints=false
        addSubview(contentView)
        contentView.topAnchor.constraint (equalTo: topAnchor) .isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint (equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.layoutIfNeeded()
        
    }
    
    func configureCell(){
        if let object = self.object as? User{
            lblUserType.text = object.userName
            
        }
        
    }
}
