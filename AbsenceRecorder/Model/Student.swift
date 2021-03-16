//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 02/03/2021.
//

import Foundation

class Student{
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date){
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "bah", surname: "bla", birthday: Date()))
    static let examples = [example]
    #endif
}
