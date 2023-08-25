//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by Alex Diaz on 8/23/23.
//

import SwiftUI

struct SearchView: View {
    @Binding var index: Int
    @State var text = ""
    @State var isEditing = false


    var body: some View {
        VStack {
            
            SearchBar(text: $text, isEditing: $isEditing)
            
            List(0..<9) { i in
                SearchCell(tag: "hello", tweets: String(i))
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {

    static var previews: some View {
        @State var previewIndex = 1
        SearchView(index: $previewIndex)
    }
}
