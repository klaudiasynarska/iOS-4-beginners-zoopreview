//
//  InfoView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 18/11/2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        HStack {
            ZStack {
                Circle()
                Text("𝐢")
                    .foregroundColor(.white)
                
            }
                .frame(width: 12, height: 12)
            Text("Info")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
