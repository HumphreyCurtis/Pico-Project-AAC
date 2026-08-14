//
//  ControlImageView.swift
//  PicoProjectAAC
//
//  Created by Humphrey Curtis on 25/03/2024.
//

import SwiftUI

struct ControlImageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .padding()
}
