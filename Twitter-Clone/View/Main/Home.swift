//
//  Home.swift
//  Twitter-Clone
//
//  Created by Alex Diaz on 8/23/23.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex = 0
    var body: some View {
        VStack {
            ZStack {
                
                TabView(selection: $selectedIndex) {
                    FeedView(index: $selectedIndex)
                        .onAppear {
                            print(selectedIndex)
                        }
                        .tabItem {
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundColor(selectedIndex == 0 ? Color("bg") : Color.gray)
                        }
                        .tag(0)
                        
                    SearchView(index: $selectedIndex)
                        .onAppear {
                            print(selectedIndex)
                        }
                        .tabItem {
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundColor(selectedIndex == 0 ? Color("bg") : Color.gray)
                            
                        }
                        .tag(1)
                    NotificationsView()
                        .onAppear {
                            print(selectedIndex)
                        }
                        .tabItem {
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(selectedIndex == 0 ? Color("bg") : Color.gray)
                        }
                        .tag(2)
                    MessagesView()
                        .onAppear {
                            print(selectedIndex)
                        }
                        .tabItem {
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(selectedIndex == 0 ? Color("bg") : Color.gray)
                        }
                        .tag(3)
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        Button {
                            print("button")
                        } label: {
                            Image("tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color("bg"))
                                .clipShape(Circle())
                        }
                    }
                    .padding()

                }
                .padding(.bottom, 65)
                .padding(.trailing, 5)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
