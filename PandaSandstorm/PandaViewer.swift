//
//  PandaViewer.swift
//  PandaSandstorm
//
//  Created by Yaro4ka on 15.02.2024.
//

import SwiftUI

struct PandaViewer: View {
    @StateObject var viewModel = PandaViewModel()

    var body: some View {
        NavigationStack {
            GeometryReader(content: { geometry in
                VStack {
                    HStack {
                        Spacer()
                        Image("panda")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: 150,
                                height: geometry.size.height / 3,
                                alignment: .topLeading
                            )
                            .clipped()
                        Spacer()
                    }
                    
                    HStack(spacing: 20) {
                        LockButton(isOpenFromTopLocked: $viewModel.isOpenFromTopLocked)
                        OpenFromTop(isLocked: $viewModel.isOpenFromTopLocked)
                    }
                    
                    Spacer()
                    
                    Button { print("Open Full button clicked") } label: {
                        Text("Open Full")
                            .frame(maxWidth: .infinity, idealHeight: 56)
                    }
                    .buttonStyle(.blueButtonStyle)
                }
                .padding()
                .background(.gray)
            })
        }
    }
}


#Preview {
    PandaViewer()
}
