//
//  Book.swift
//  University Library
//
//  Created by Huda M. A'abed on 26/07/2023.
//

import Foundation
class Book{
    var title: String?
    var authorName: String?
    var backgroundColor: String?
    var color: String?
    var bookImage: String?
    var btnCancel: String?
    
    init(title: String?, authorName: String?, backgroundColor: String?, color: String?, bookImage: String?, btnCancel: String?) {
        self.title = title
        self.authorName = authorName
        self.backgroundColor = backgroundColor
        self.bookImage = bookImage
        self.color = color
        self.btnCancel = btnCancel
    }
}
