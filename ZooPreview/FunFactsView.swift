//
//  FunFactsView.swift
//  ZooPreview
//
//  Created by Klaudia Synarska on 19/11/2021.
//

import SwiftUI

struct FunFactsView: View {
    
    let funFacts: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "brain")
                Text("Fun Facts")
                    .font(.headline)
            }

            ForEach(funFacts, id: \.self) { funFact in
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 10))
                        .padding(4)

                    Text(funFact).font(.body)
                }
            }.padding([.leading, .trailing, .bottom], 8)
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView(funFacts: goatGotenks.funFacts)
    }
}
