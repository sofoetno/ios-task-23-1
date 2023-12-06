//
//  TextFieldsView.swift
//  ChatList
//
//  Created by Sofo Machurishvili on 06.12.23.
//

import SwiftUI

struct TextFieldsView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var dateOfBirth: String = ""
    @State private var country: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text("Name")
                .font(.headline)
            TextField("test", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Email")
                .font(.headline)
            TextField("test@gmail.com", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
    
            Text("Password")
                .font(.headline)
            SecureField("*********", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .textContentType(.password)
            
            Text("Date of Birth")
                .font(.headline)
            TextField("31/02/2000", text: $dateOfBirth)
                .textFieldStyle(RoundedBorderTextFieldStyle())
           
            Text("Country/Region")
                .font(.headline)
            TextField("Georgia", text: $country)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    TextFieldsView()
}
