//
//  RosterView.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 4/29/25.
//

import SwiftUI

struct RosterView: View {
    
    
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(RosterData.roster) { player in
                        PlayerView(roster: player)
                    }
                    .padding()
                }
            }
            .navigationTitle("🔥Miami Heat Roster🏀")
        }
    }
}

#Preview {
    RosterView()
}

struct PlayerView: View {
    
    let roster: Roster
    
    var body: some View {
        VStack{
            Image(roster.playerImage)
                .resizable()
                .frame(width: 90, height: 120)
            Text(roster.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
    }
}
