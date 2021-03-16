//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Kit Ropner on 16/03/2021.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbscenceOnThatDayReturnsAbsence() throws {
        //arrange
        let division = Division(code:"TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 10000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absenceOne = Absence(date: dateToday, students: Student.examples)
        let absenceTwo = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absenceOne)
        division.absences.append(absenceTwo)
        //act
        let actual = division.getAbsence(for: dateLaterToday)
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual{
            XCTAssertEqual(actualNotNil.takenOn, actual.takenOn)
        }
    }

}
