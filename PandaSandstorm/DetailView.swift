//
//  DetailView.swift
//  PandaSandstorm
//
//  Created by Yaro4ka on 15.02.2024.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .topTrailing) {
                Image("panda")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(
                        width: proxy.size.width,
                        height: proxy.size.height,
                        alignment: .topLeading
                    )
                    .clipped()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                        .background(Color.gray)
                        .clipShape(Circle())
                        .padding(20)
                }
            }
        }
    }
}

#Preview {
    DetailView()
}
