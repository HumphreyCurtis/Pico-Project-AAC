//
//  LogoView.swift
//  PicoProjectAAC
//
//  Created by Humphrey Curtis on 25/03/2024.
//

import SwiftUI

struct LogoView: View {
    @State var projectionName: String
    @State var colour: Color
    
    @State private var scaling = false
    
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Image(systemName: projectionName)
                    .resizable()
                    .scaledToFit()
                //                .padding()
                    .scaleEffect(scaling ? 0.9 : 0.5)
                    .animation(.interactiveSpring(response: 2, dampingFraction: 0.86, blendDuration: 0.25).repeatForever(autoreverses: false), value: scaling)
                //                .scaleEffect(scaling ? 1 : 0.2)
                //                .onAppear {
                //                    withAnimation(
                //                        .spring().repeatForever(autoreverses: false)) {
                //                                scaling.toggle()
                //                        }
                //                    }
                
                
                
                Spacer()
            }
        }
        .onAppear {
            scaling.toggle()
        }
        .background(colour)
    }

}

#Preview {
    LogoView(projectionName: "figure.roll", colour: Color.blue)
}
