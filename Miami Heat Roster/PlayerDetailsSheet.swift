//
//  PlayerDetailsSheet.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 4/29/25.
//

import SwiftUI

struct PlayerDetailsSheet: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                    print("X pressed")
                } label: {
                    Image(systemName: "xmark")
                        .frame(width: 44, height: 44)
                        .imageScale(.large)
                        .foregroundStyle(Color(uiColor: .label))
                }
            }
            .padding()
            
            Spacer()
            Image("Dru-Smith")
                .resizable()
                .frame(width: 300, height: 380)
                .padding()
            Text("Dru Smith is a guard who wears number 12 and went to school at the University of Missouri. Hes played 3 seasons and made $508,891 in 2025")
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

#Preview {
    PlayerDetailsSheet()
}
