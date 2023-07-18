//
//  BooksCollectionViewCell.swift
//  University Library
//
//  Created by Huda M. A'abed on 21/07/2023.
//

import UIKit
class BooksCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgBook: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(){
        if let object = self.object as? Book {
            imgBook.image = UIImage.init(named: object.bookImage ?? "")
            lblTitle.text = object.title
            lblAuthor.text = object.authorName
            stackView.backgroundColor = UIColor(named: object.backgroundColor ?? "")?.withAlphaComponent(0.16)
            lblTitle.textColor = UIColor(named: object.color ?? "")
            lblAuthor.textColor = UIColor(named: object.color ?? "")
            btnDelete.tintColor = UIColor(named: object.color ?? "")
        }
    }
   
}





