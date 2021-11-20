//
//  GalleryItemView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 20/11/2021.
//

import SwiftUI

struct GalleryItemView: View {
    
    private static let imageWidth: CGFloat = 100
    private static let imageMargin: CGFloat = 24
    
    let title: String
    let image: UIImage
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("🐒")
                Text(title)
            }.padding(4)

            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .frame(
                    width: GalleryItemView.imageWidth,
                    height: image.size.height / image.size.width * GalleryItemView.imageWidth,
                    alignment: .center
                )
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .padding([.leading, .trailing, .bottom], GalleryItemView.imageMargin)
                
            
        }.background(
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color(.secondarySystemBackground))
        )
        
            
        
        
        
    }
}

struct GalleryItemView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryItemView(title: "1", image: UIImage(named: "goat_1")!)
    }
}
