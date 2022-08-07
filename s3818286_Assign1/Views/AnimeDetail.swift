/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Pham Hoang Thien An
  ID: s3818286
  Created  date: 2/8/2022
  Last modified: dd/mm/yyyy (e.g. 05/08/2022)
  Acknowledgement: Acknowledge the resources that you use here.
*/


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
                    Text("Producer: \(anime.producer)")
                        .font(.system(size:15))
                    }
                    .foregroundColor(.blue)
                    Group{
                        
                        Text("Plot: \(anime.plot)")
                            .fontWeight(.heavy)
                        Text("My thoughts: \(anime.review)")
                            .fontWeight(.heavy)
                    }.padding().foregroundColor(.blue).font(.system(size:20))
                        
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

