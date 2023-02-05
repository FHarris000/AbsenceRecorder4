//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Fiennes Harris on 20/01/2023.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
