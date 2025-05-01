//
//  SalaryChartSheet.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 5/1/25.
//

import SwiftUI
import Charts


struct SalaryChartSheet: View {
    
    @Binding var isShowingChartView : Bool

    
    var body: some View {
//        HStack{
//            Spacer()
//            Button {
//                isShowingChartView = false
//            } label: {
//                Image(systemName: "xmark")
//                    .frame(width: 44, height: 44)
//                    .imageScale(.large)
//                    .foregroundStyle(Color(uiColor: .label))
//            }
//        }
       // .padding()
        NavigationStack {
            VStack{
               

                Chart {
                    ForEach(RosterData.roster) { player in
                        if let salary = Double(player.yearlySalary.replacingOccurrences(of: ",", with: "")) {
                            SectorMark(angle: .value("Salary", salary),
                                       angularInset: 2)
                            
                            .foregroundStyle(by: .value("Player", player.name))
                            .foregroundStyle(Color.white)
                            .cornerRadius(10)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Salary distribution")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isShowingChartView = false
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

#Preview {
    SalaryChartSheet(isShowingChartView: .constant(true))
}

