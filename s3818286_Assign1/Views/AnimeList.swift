//
//  AnimeList.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
//
import SwiftUI

struct AnimeList: View {
    var body: some View {
        NavigationView {
            List(animes){
                anime in
                NavigationLink{
                    AnimeDetail(anime: anime)
                } label: {
                    AnimeRow(anime: anime)
                }
                .navigationTitle("My Anime")
            }
        }
    }
}

struct AnimeList_Previews: PreviewProvider {
    static var previews: some View {
        AnimeList()
    }
}
