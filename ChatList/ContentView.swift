//
//  ContentView.swift
//  ChatList
//
//  Created by Sofo Machurishvili on 06.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(alignment: .center) {
            Button {
                print("going to back")
            } label: {
                Image("back")
            }

            Spacer()
            
            Text("Edit Profile")
                .font(.system(size: 20))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }
        .padding()
        
        ProfileImage()
        
        VStack(alignment: .center) {
            TextFieldsView()
        }
        .padding()
        
        Button {
            print("")
        } label: {
            Text ("Save changes")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .fontWeight(.medium)
                .padding(.vertical, 14)
                .padding(.horizontal, 44)
        }
        .background(Color(UIColor(red: 0.14, green: 0.15, blue: 0.38, alpha: 1)))
        .cornerRadius(6)
        .padding(.top, 29)

    }
}

#Preview {
    ContentView()
}
