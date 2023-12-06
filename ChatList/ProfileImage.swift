//
//  ProfileImage.swift
//  ChatList
//
//  Created by Sofo Machurishvili on 06.12.23.
//

import SwiftUI

struct ProfileImage: View {
    var body: some View {

        Image("profile")
            .resizable()
            .scaledToFill()
            .frame(width: 165, height: 170)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .overlay {
                GeometryReader { geometry in
                    Image ("foto")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .offset(x: geometry.size.width - 38, y: geometry.size.height - 38)
                }
            }
            .shadow(color: .black, radius: 1)
            .aspectRatio(contentMode: .fit)
            Spacer()
    }
}

#Preview {
    ProfileImage()
}
