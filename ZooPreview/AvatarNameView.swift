//
//  AvatarNameView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 18/11/2021.
//

import SwiftUI

struct AvatarNameView: View {
    
    let name: String
    let description: String
    let avatarView: AvatarView
    
    var body: some View {
        HStack {
            avatarView
            VStack(alignment: .leading) {
                Text(name).font(.title)
                Text(description)
                    .foregroundColor(Color(.secondaryLabel))
                    .font(.subheadline)
                    
            }
        }
    }
}

struct AvatarNameView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarNameView(
            name: "Gotenks",
            description: "The escape goat",
            avatarView: AvatarView(emoji: "🐐")
        )
    }
}
