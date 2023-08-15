//
//  UserType.swift
//  University Library
//
//  Created by Huda M. A'abed on 15/08/2023.
//

import Foundation

class StudentInfo{
    var name: String?
    var id: Int?
    var faculty: String?
    var userName: Int?
    var numberOfBorrowedBooks: Int?

    init(name: String?, id: Int?, faculty: String?, userName: Int?, numberOfBorrowedBooks: Int?) {
        self.name = name
        self.id = id
        self.faculty = faculty
        self.userName = userName
        self.numberOfBorrowedBooks = numberOfBorrowedBooks
    }
}
