//
//  LevelsView.swift
//  ChordJam
//
//  Created by Christian Aldrich Darrien on 18/06/24.
//

import SwiftUI

struct LevelsView: View {
    @StateObject var levelManager = LevelsController()
    var body: some View {
        VStack{
            Text("Play the C Chord!")
            Text("\(levelManager.data.noteNameWithSharps) - \(levelManager.data.noteNameWithFlats)")
            Spacer()
            Text("\(levelManager.pointsC)")
        }
        
            .onAppear(perform: {
                levelManager.start()
            })
    }
}

#Preview {
    LevelsView()
}
