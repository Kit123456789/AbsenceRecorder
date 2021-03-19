//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 02/03/2021.
//

import SwiftUI

struct DivisionView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))){
                    DivisionItem(division: division)
                }
            }
            .onAppear(perform: {state.saveToFile() })
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
        DivisionView()
            .environmentObject(StateController())
    }
}

