//
//  BouncingHeaderView.swift
//  ZooPreview
//
//  Created by Rafał Kwiatkowski on 15/11/2021.
//

import SwiftUI

struct BouncingHeaderView<Content: View>: View {
	
	init(content: @escaping () -> Content) {
		self.content = content
	}
	
	let content: () -> Content
	
    var body: some View {
		GeometryReader { proxy in
			content()
				.frame(height: max(0, proxy.size.height + proxy.frame(in: .global).minY))
				.clipped()
				.offset(y: -proxy.frame(in: .global).minY)
		}
    }
}
