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
                BouncingHeaderView {
                    Image(goat.mainImage)
                        .resizable()
                        .scaledToFill()
                }
                    .frame(height: 300)
                
                VStack(alignment: .leading) {
                    AvatarNameView (
                        name: goat.name,
                        description: goat.subtitle,
                        avatarView: AvatarView(emoji: "🐐" )
                    )
            
                    InfoView()
                    DetailsView(infos: goat.info)
                    FunFactsView(funFacts: goat.funFacts)
                  
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
