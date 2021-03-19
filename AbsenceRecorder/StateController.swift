//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 11/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init(){
        loadFromFile()
        //load from file
    }
    func loadFromFile(){
        if let loaded: [Division] = FileManager.default.load(from: "divisions.json") {
            divisions = loaded

            }
        }
    func saveToFile(){
        FileManager.default.sae(to:"divisions.json", object: divisions)
    }
}
