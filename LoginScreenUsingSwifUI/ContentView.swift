//
//  ContentView.swift
//  LoginScreenUsingSwifUI
//
//  Created by Ramill Ibragimov on 11.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Login()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login: View {
    @State private var user = ""
    @State private var pass = ""
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "music.house")
                .resizable()
                .frame(width: 140, height: 140)
                .padding()
            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top, .bottom], 20)
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Username")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label).opacity(0.75))
                    HStack {
                        TextField("Enter Your Username", text: $user)
                        if user != "" {
                            Image(systemName: "checkmark.square")
                                .foregroundColor(Color.init(.label))
                        }
                    }
                    Divider()
                }.padding(.bottom, 15)
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label).opacity(0.75))
                    SecureField("Enter Your Password", text: $pass)
                    Divider()
                }
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Text("Forget Password?")
                            .foregroundColor(Color.gray.opacity(0.5))
                    }
                }
            }.padding(.horizontal, 6)
            bottomView()
        }.padding()
    }
}

struct bottomView: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                Text("Sign In")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 120)
                    .padding()
            }.background(Color.orange)
            .clipShape(Capsule())
            .padding(.top, 45)
            
            Text("(or)")
                .foregroundColor(Color.gray.opacity(0.5))
                .padding(.top, 30)
            
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "book.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "link.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                    
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "flag.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "bell.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                }

            }.padding(.top, 25)
            
            HStack(spacing: 8) {
                Text("Don't Have An Account?")
                    .foregroundColor(Color.gray.opacity(0.5))
                Button(action: {
                    
                }) {
                    Text("Sign Up")
                }.foregroundColor(.blue)
            }.padding(.top, 25)
        }
    }
}
