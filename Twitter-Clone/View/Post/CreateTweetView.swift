//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Alex Diaz on 8/24/23.
//

import SwiftUI

struct CreateTweetView: View {
    @Binding var text: String
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Cancel")
                })
                .padding()
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Tweet")
                        .padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .padding()
            }
            
            Spacer()
            MultilineTextField(text: $text)
                .padding()
            
        }
    }
}

//struct CreateTweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateTweetView()
//    }
//}
