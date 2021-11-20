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
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "info.circle.fill")
                Text("Info")
                    .font(.headline)
            }
            
            HStack {
                ForEach(infos, id: \.self) { info in
                    VStack(spacing: 4) {
                        Text(info.label)
                            .font(.body)

                        Text(info.value)
                            .font(.subheadline)
                            .foregroundColor(Color(.secondaryLabel))
                            .multilineTextAlignment(.center)
                    }
                    
                    if (info != infos.last) {
                        Divider()
                    }
                }
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(
            infos: [
                Goat.Info(label: "Age", value: "8 years"),
                Goat.Info(label: "Color", value: "Dirty white"),
                Goat.Info(label: "Birth place", value: "Dublin"),
                Goat.Info(label: "Breed", value: "Old Irish Goats")
            ]
        )
    }
}
