//
//  BlueButtonStyle.swift
//  PandaSandstorm
//
//  Created by Yaro4ka on 15.02.2024.
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundStyle(.white)
            .font(.title3)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(.indigo, lineWidth: 3)
            )
            .scaleEffect(configuration.isPressed ? 0.96 : 1.0)
            .animation(.easeOut, value: configuration.isPressed)
    }
}

extension ButtonStyle where Self == BlueButton {
    static var blueButtonStyle: Self { Self() }
}

