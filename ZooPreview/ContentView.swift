//
//  ContentView.swift
//  ZooPreview
//
//  Created by Rafał Kwiatkowski on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
	
	let goat = goatGotenks
	
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                BouncingHeaderView(title: "Goat") {
                    Image(goat.mainImage)
                        .resizable()
                        .scaledToFill()
                }
                    .frame(height: 300)
                
                VStack(alignment: .leading, spacing: 0) {
                    AvatarNameView (
                        name: goat.name,
                        description: goat.subtitle,
                        avatarView: AvatarView(emoji: "🐐" )
                    )
                    Spacer().frame(height: 24)
                    InfoView()
                    Spacer().frame(height: 16)
                    DetailsView(infos: goat.info)
                    Spacer().frame(height: 24)
                    FunFactsView(funFacts: goat.funFacts)
                    Spacer().frame(height: 8)
                    GalleryView(imagesNames: goat.images)
                  
                }
                .padding(16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
