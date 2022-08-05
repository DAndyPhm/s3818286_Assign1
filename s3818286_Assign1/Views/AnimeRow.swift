//
//  AnimeRow.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
//
import Foundation
import SwiftUI

struct AnimeRow: View {
    var anime: Anime
    var body: some View {
        ZStack {
            Image(anime.imageName)
                .resizable()
                .frame(width: 300, height: 120, alignment: .center)
//            Text(anime.name)
//                .bold()
//                .foregroundColor(.orange)
//                .font(.system(size: 23))
            
        }
    }
}
