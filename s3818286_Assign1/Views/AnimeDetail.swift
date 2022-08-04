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
                VStack {
                    CircleImage(image: anime.image)
                    Text(anime.name)
                        .font(.system(size: 40))
                        .bold()
                    .foregroundColor(.white)
                    Image("rmit-logo-white").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 65)
                        .padding(.bottom, 5)
                    
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
