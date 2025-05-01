//
//  RosterView.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 4/29/25.
//

import SwiftUI

struct RosterView: View {
    
    @StateObject var viewModel = RosterViewModel()
    @StateObject var salaryChartViewModel = SalaryChartSheetModel()
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),]
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(RosterData.roster) { player in
                            PlayerView(roster: player)
                                .preferredColorScheme(.dark)
                                .onTapGesture {
                                    viewModel.selectedPlayer = player
                                }
                        }
                        .padding()
                    }
                    Button {
                        print("Salary distribution tapped")
                        salaryChartViewModel.isShowSalaryChartSheet = true
                    } label: {
                        ButtonConfig(buttonText: "View salary distribution")
                    }
                    .sheet(isPresented: $salaryChartViewModel.isShowSalaryChartSheet) {
                        SalaryChartSheet(isShowingChartView: $salaryChartViewModel.isShowSalaryChartSheet)
                    }
                }
                .navigationTitle("🔥Miami Heat Roster🏀")
                .sheet(isPresented: $viewModel.isShowingPlayerDetailView) {
                    PlayerDetailsSheet(roster: viewModel.selectedPlayer!, isShowingPlayerDetailsView: $viewModel.isShowingPlayerDetailView)
                }
            }
        } .background(.black)
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

struct ButtonConfig: View {
    
    var buttonText: String
    
    var body: some View {
        Text(buttonText)
            .frame(width: 260, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.bold)
            .cornerRadius(10)
    }
}
