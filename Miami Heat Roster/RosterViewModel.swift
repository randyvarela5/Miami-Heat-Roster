//
//  RosterViewModel.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 4/29/25.
//

import SwiftUI

class RosterViewModel: ObservableObject {
    var selectedPlayer: Roster? {
        didSet {
            isShowingPlayerDetailView = true
        }
    }
    @Published var isShowingPlayerDetailView: Bool = false
}
