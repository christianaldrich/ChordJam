//
//  Level1View.swift
//  ChordJam
//
//  Created by Christian Aldrich Darrien on 18/06/24.
//

import SwiftUI

struct Level1View: View {
    @StateObject var manager = LevelsController()
    var body: some View {
        
        VStack{
            ProgressView(value: manager.pointsC)
                .progressViewStyle(.linear)
                .frame(width: 100)
            
            Text("Play the C Chord!")
            Text(manager.data.noteNameWithSharps)
        }
        .onAppear(perform: {
            manager.start()
        })
        .onDisappear(perform: {
            manager.stop()
        })
            
    }
}

#Preview {
    Level1View()
}
