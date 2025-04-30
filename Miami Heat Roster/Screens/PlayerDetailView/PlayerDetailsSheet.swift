//
//  PlayerDetailsSheet.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 4/29/25.
//

import SwiftUI

struct PlayerDetailsSheet: View {
    
    var roster : Roster
    @Binding var isShowingPlayerDetailsView : Bool
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                    isShowingPlayerDetailsView = false
                } label: {
                    Image(systemName: "xmark")
                        .frame(width: 44, height: 44)
                        .imageScale(.large)
                        .foregroundStyle(Color(uiColor: .label))
                }
            }
            .padding()
            
            Spacer()
            Image(roster.playerImage)
                .resizable()
                .frame(width: 300, height: 380)
                .padding()
            Text("\(roster.name) is a \(roster.position) who wears number \(roster.number) and went to school at \(roster.school). Hes played \(roster.seasonsPlayed) seasons and made $\(roster.yearlySalary) in 2025")
                .font(.headline)
                .fontWeight(.semibold)
            Spacer()
            Button {
                print("Highlight button tapped")
            } label: {
                Text("Watch Highlights")
                    .frame(width: 250, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .cornerRadius(10)
            }
        }
    }
}

//#Preview {
//    PlayerDetailsSheet(roster: RosterData.roster , isShowingPlayerDetailsView: .constant(false))
//}
