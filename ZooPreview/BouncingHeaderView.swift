//
//  BouncingHeaderView.swift
//  ZooPreview
//
//  Created by Rafał Kwiatkowski on 15/11/2021.
//

import SwiftUI

struct BouncingHeaderView<Content: View>: View {
	
	init(title: String, content: @escaping () -> Content) {
        self.title = title
		self.content = content
	}
	
    let content: () -> Content
    let title: String
	
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            GeometryReader { proxy in
                content()
                    .frame(height: max(0, proxy.size.height + proxy.frame(in: .global).minY))
                    .clipped()
                    .offset(y: -proxy.frame(in: .global).minY)
            }
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(16)
        }
    }
}
