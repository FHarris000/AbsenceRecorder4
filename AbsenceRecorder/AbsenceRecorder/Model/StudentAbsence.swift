//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Fiennes Harris on 03/02/2023.
//

import Foundation
import CoreImage

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    
    static let example = StudentAbsence(student: Student.example)
    
    #endif
}



