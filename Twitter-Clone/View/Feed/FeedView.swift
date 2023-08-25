//
//  FeedView.swift
//  Twitter-Clone
//
//  Created by Alex Diaz on 8/23/23.
//

import SwiftUI

struct FeedView: View {
    @Binding var index: Int

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                
                TweetCellView(tweet: "Hey Tim, are those regular glasses?", tweetImage: "post")
                
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

//struct FeedView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedView(index: )
//    }
//}
