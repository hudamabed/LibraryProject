//
//  GlobalConstant.swift
//  University Library
//
//  Created by Huda M. A'abed on 23/07/2023.
//

import Foundation
import UIKit

class GlobalConstant{
    
    enum Menu{
        case addBook
        case addStudent
        case addDoctor
        case addEmployee
        case editBook
        case editStudent
        case editDoctor
       
        var name: String{
            switch self {
            case .addBook:
                return "Add Book"
            case .addStudent:
                return "Add Student"
            case .addDoctor:
                return "Add Doctor"
            case .addEmployee:
                return "Add Employee"
            case .editBook:
                return "Edit Book"
            case .editStudent:
                return "Edit Student"
            case .editDoctor:
                return "Edit Doctor"
            }
        }
    }
}
