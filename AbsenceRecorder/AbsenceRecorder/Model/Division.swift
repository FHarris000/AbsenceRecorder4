//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Fiennes Harris on 20/01/2023.
//

import Foundation

class Division {
    let code: String
    @Published var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExisitingIfAvailable(for date: Date) -> Absence {
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        // loop as many times as the parameter size says to create students and add them to the students property
        for i in 0 ... size {
            let student = Student(forename: "first\(i)", surname: "second\(i)", birthday: Date())
            division.students.append(student)
        }
                
        return division
    }
    static let examples = [Division.createDivision(code: "CComX-1", of: 8),
                           Division.createDivision(code: "CMdpW-3", of: 7),
                           Division.createDivision(code: "CMdaY-5", of: 10),
                           Division.createDivision(code: "CEcoD-7", of: 7)]
    #endif
    
    
}
