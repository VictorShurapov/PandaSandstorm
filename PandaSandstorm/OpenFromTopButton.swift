//
//  OpenFromTopButton.swift
//  PandaSandstorm
//
//  Created by Yaro4ka on 15.02.2024.
//

import SwiftUI

struct OpenFromTop: View {
    @State var isPresenting = false
    @Binding var isLocked: Bool
    
    var body: some View {
        Button {
            isPresenting.toggle()
        } label: {
            Text("Open from top")
                .frame(maxWidth: .infinity, idealHeight: 56)
        }
        .buttonStyle(.blueButtonStyle)
        .disabled(isLocked)
        .opacity(isLocked ? 0.5 : 1)
        .fullScreenCover(isPresented: $isPresenting) {
            DetailView()
        }
    }
}

#Preview {
    OpenFromTop(isLocked: .constant(false))
}
