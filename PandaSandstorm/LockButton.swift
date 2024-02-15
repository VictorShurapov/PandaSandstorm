//
//  LockButton.swift
//  PandaSandstorm
//
//  Created by Yaro4ka on 15.02.2024.
//

import SwiftUI

struct LockButton: View {
    @Binding var isOpenFromTopLocked: Bool
    
    var body: some View {
        Button {
            isOpenFromTopLocked.toggle()
        } label: {
            Text(isOpenFromTopLocked ? "Unlock" : "Lock")
                .frame(maxWidth: .infinity, idealHeight: 56)
        }
        .buttonStyle(.blueButtonStyle)
    }
}

#Preview {
    LockButton(isOpenFromTopLocked: .constant(false))
}
