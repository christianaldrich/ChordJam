//
//  ContentView.swift
//  ChordJam
//
//  Created by Christian Aldrich Darrien on 17/06/24.
//

import SwiftUI

struct TuningView: View {
    @StateObject var conductor = ChordController()
    
    var body: some View {
        HStack {
            Text("Note Name")
//            Text("Hallo")
            Spacer()
            Text("\(conductor.data.noteNameWithSharps) / \(conductor.data.noteNameWithFlats)")
        }.padding()
            .onAppear(perform: {
                conductor.start()
            })
            .onDisappear(perform: {
                conductor.stop()
            })
    }
}

#Preview {
    TuningView()
}
