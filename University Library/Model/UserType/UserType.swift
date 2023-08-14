//
//  UserType.swift
//  University Library
//
//  Created by Huda M. A'abed on 15/08/2023.
//

import Foundation

class UserType{
    var employee: String?
    var doctor: String?
    var student: String?
    
    init(employee: String?, doctor: String?, student: String?) {
        self.employee = employee
        self.doctor = doctor
        self.student = student
    }
    
}
