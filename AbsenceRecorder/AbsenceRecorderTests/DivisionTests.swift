//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Fiennes Harris on 03/02/2023.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {
    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        //arange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 86400 )
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn,absence2.takenOn)
        }
        
    }
    
    func testCreateAbsenceOrGetExisitingIfAvailableGetsOrCreatesAbsence() {
        //arrange
        let date = Date()
        let students = Student.examples
        let absence = Absence(date: Date(), students: students)
        let division = Division(code: "TestDiv")
        division.absences.append(absence)
        //act
        let test = division.createAbsenceOrGetExisitingIfAvailable(for: Date())
        //assert
        XCTAssertEqual(division.absences.first, test)

    }

    
    

}
