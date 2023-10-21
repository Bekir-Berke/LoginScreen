//
//  ContentView.swift
//  LoginScreen
//
//  Created by Bekir Berke Yılmaz on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showingAlert = false
    var body: some View {
        VStack(alignment:.center, spacing: 10){
            HStack{
                Image(systemName: "person.circle")
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Text("Login Screen")
                    .font(.largeTitle)
                    .padding(.bottom, 21)
            }
            HStack(spacing: 15){
                TextField("Eposta", text: $email)
                    .bold()
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.tertiary, lineWidth: 3))
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.horizontal, 20)
                    .textCase(.lowercase)
                    .textInputAutocapitalization(.never)
            }
            .padding()
            HStack{
                SecureField("Parola", text: $password)
                    .bold()
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.tertiary, lineWidth: 3))
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.horizontal, 20)
            }
            .padding()
            HStack{
                Button("Giriş Yap"){
                    showingAlert = true
                }
                .frame(width: 100, height: 30, alignment: .center)
                .alert(isPresented: $showingAlert){
                    Alert(
                        title:Text("Hoşgeldiniz"),
                        message: Text("Giriş Başarılı")
                    )
                }
                .background(
                    Capsule()
                        .fill(.blue)
                )
                .foregroundStyle(.white)
            }
        }
    }
}
#Preview {
    ContentView()
}
