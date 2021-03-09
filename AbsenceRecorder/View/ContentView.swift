//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 02/03/2021.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay()}) {
                        Image(systemName: "arrowshape.turn.up.left.fill")
                    }
                }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { currentDate = currentDate.nextDay()}) {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                        }
                }
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}