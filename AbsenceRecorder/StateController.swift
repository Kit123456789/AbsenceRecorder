//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 11/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init(){
        divisions = Division.examples
        
    }
}
