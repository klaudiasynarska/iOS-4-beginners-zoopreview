//
//  AvatarView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 18/11/2021.
//

import SwiftUI

struct AvatarView: View {
    
    let emoji: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(.secondarySystemBackground))
            Text(emoji)
                .font(.system(size: 28))
        }
            .frame(width: 40, height: 40, alignment: .center)
            .shadow(color: .gray, radius: 2, x: 0, y: 0)
        
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(emoji: "🐐")
    }
}
