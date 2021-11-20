//
//  GalleryView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 20/11/2021.
//

import SwiftUI

struct GalleryView: View {
    
    let imagesNames: [String]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "photo")
                Text("Gallery")
                    .font(.headline)
            }
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(Array(imagesNames.enumerated()), id: \.element) { index, imageName in
                        if let image = UIImage(named: imageName) {
                            let imageNumber = index + 1
                            GalleryItemView(title: String(imageNumber), image: image)
                        }
                    }
                }
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(imagesNames: goatGotenks.images)
    }
}
