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
        HStack {
            anime.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(anime.name)
        }
    }
}