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
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.black)
                    
                    Image(anime.imageName)
                        .resizable()
                        
                    StarRating(rating: anime.rating)
                    
                    Text(anime.broadcastYear)
                            .font(.system(size:15))
                    Text(anime.plot)
                    Text(anime.review)
                }
        }
    }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

