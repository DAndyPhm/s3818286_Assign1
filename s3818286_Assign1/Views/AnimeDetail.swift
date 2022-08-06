//
//  AnimeDetail.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
//

import SwiftUI

struct AnimeDetail: View {
    var anime: Anime
    var body: some View {
        ZStack {
            ScrollView{
                VStack {
                    Text(anime.name)
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.blue)
                        .font(.title)
                        
                    
                    VideoView(videoID: anime.videoID)
                        .frame(width: 400, height: 400)
                        .fixedSize()
                    
                    Group{
                    StarRating(rating: anime.rating)
                    Text("Genre: \(anime.genre)")
                        .font(.system(size:15))
                    Text("Broadcast Year: \(anime.broadcastYear)")
                        .font(.system(size:15))
                    }
                    .foregroundColor(.blue)
                    Group{
                        
                        Text("Plot: \(anime.plot)")
                            .font(.system(size:20))
                        Text("My thoughts: \(anime.review)")
                            .font(.system(size:20))
                    }.padding().foregroundColor(.blue)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

