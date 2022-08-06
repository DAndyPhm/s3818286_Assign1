//
//  AnimeDetail.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
//

import SwiftUI

struct AnimeDetail: View {
    var anime: Anime
    @AppStorage("isDarkMode") private var isDark = false
    var body: some View {
        ZStack {
            ScrollView{
                VStack {
                    Text(anime.name)
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.blue)
                        
                    
                    VideoView(videoID: "MGRm4IzK1SQ&t=13s")
                        .cornerRadius(12)
                        .padding(.horizontal, 24)
                        
                    StarRating(rating: anime.rating)
                    Group{
                        Text(anime.genre)
                            .font(.system(size:15))
                        Text(anime.broadcastYear)
                            .font(.system(size:15))
                        Text(anime.plot)
                            .font(.system(size:20))
                        Text(anime.review)
                            .font(.system(size:20))
                    }.padding().foregroundColor(.blue)
                }
                .toolbar{
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                        Button(action:{isDark.toggle()}, label: {
                            isDark ? Label("Dark", systemImage: "lightbulb.fill") : Label("Dark", systemImage: "lightbulb")
                        })
                    }
                }
                .environment(\.colorScheme, isDark ? .dark : .light)
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

