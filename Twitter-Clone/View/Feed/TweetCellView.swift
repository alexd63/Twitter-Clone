//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Alex Diaz on 8/25/23.
//

import SwiftUI

struct TweetCellView: View {
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Cem ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@cem_salta")
                        .foregroundColor(.gray)
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                }
                
                
            }
            //Cell Bottom
            
            HStack(spacing: 50) {
                Button {
                    print("Tes")
                } label: {
                    Image("Comments")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                    
                }
                Button {
                    print("Tes")
                } label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18, height: 14)
                        .foregroundColor(.gray)
                    
                }
                Button {
                    print("Tes")
                } label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 15)
                        .foregroundColor(.gray)
                    
                }
                
                Button {
                    print("Tes")
                } label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 18, height: 15)
                        .foregroundColor(.gray)
                    
                }

            }
            .padding(.top)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}

var sampleText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
