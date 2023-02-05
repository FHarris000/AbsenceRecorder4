//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Fiennes Harris on 02/02/2023.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        Text("Statistics")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
