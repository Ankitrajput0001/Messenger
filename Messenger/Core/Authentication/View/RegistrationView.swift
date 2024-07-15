//
//  RegistrationView.swift
//  Messenger
//
//  Created by Ankit Rajput on 10/07/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            
            //logo image
            Image(systemName: "ellipsis.message")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            //text fields
            VStack {
                TextField("Enter your Email", text: $viewModel.email)
                    .textInputAutocapitalization(.never)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your Full Name", text: $viewModel.fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your Password", text: $viewModel.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            //Sign up button
            Button{
                Task { try await viewModel.createUser() }
            } label: {
                Text("Sign Up ")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            //sign up link
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack (spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}

