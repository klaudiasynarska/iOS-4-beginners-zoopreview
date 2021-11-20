//
//  DetailsView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 18/11/2021.
//

import SwiftUI

struct DetailsView: View {
    
    let infos: [Goat.Info]
    
    var body: some View {
        HStack {
            ForEach(infos, id: \.self) { info in
                VStack(spacing: 4) {
                    Text(info.label).font(.body)
                    Text(info.value)
                        .font(.subheadline)
                        .foregroundColor(Color(.secondaryLabel))
                }
                
                if (info != infos.last) {
                    Divider()
                }
            }        
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(
            infos: [
                .init(label: "Age", value: "8 years"),
                .init(label: "Color", value: "Dirty white"),
                .init(label: "Birth place", value: "Dublin"),
                .init(label: "Breed", value: "Old Irish Goats")
            ]
        )
    }
}
