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
            Image(systemName: "info.circle.fill")
            Text("Info").font(.headline)
            
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
