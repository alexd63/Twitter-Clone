//
//  SearchBar.swift
//  Twitter-Clone
//
//  Created by Alex Diaz on 8/25/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    var body: some View {
        HStack {
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .padding(.leading)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                    }
                )
                .onTapGesture {
                    isEditing = true
                }
            
        }
    }
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        @State var placeholder = ""
//        @State var editPlacehold = false
//        SearchBar(text: $placeholder, isEditing: $editPlacehold)
//    }
//}
