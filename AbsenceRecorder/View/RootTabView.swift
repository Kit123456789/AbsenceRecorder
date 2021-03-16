//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Kit Ropner on 10/03/2021.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            DivisionView()
                .tabItem {
                    Image(systemName: "pencil.circle.fill")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("Statistics")
                }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
}
