//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 02/03/2021.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(divisions: Division.examples)
        }
    }
}
