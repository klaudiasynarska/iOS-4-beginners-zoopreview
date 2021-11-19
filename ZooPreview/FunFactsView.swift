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
        VStack(alignment: .leading) {
            HStack {
                Text("🧠")
                Text("Fun Facts").font(.headline)
            }

            ForEach(funFacts, id: \.self) { funFact in
                HStack(alignment: .top) {
                    Text("·").font(.title)
                    Text(funFact)
                }
            }
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView(funFacts: goatGotenks.funFacts)
    }
}
