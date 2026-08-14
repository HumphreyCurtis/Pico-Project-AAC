//
//  ImageView.swift
//  PicoProjectAAC
//
//  Created by Humphrey Curtis on 25/03/2024.
//

import SwiftUI


struct ImageView: View {
    var body: some View {
        Image("angel-signage")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    ImageView()
}
