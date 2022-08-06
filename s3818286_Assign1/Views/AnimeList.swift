//
//  AnimeList.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
//
import SwiftUI

struct AnimeList: View {
    @AppStorage("isDarkMode") private var isDark = false
    var body: some View {
        NavigationView {
            List(animes){
                anime in
                NavigationLink{
                    AnimeDetail(anime: anime)
                } label: {
                    AnimeRow(anime: anime)
                }

            }
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing){
                    Button(action:{isDark.toggle()}, label: {
                        isDark ? Label("Dark", systemImage: "lightbulb.fill") : Label("Dark", systemImage: "lightbulb")
                    })
                }
            }
            .environment(\.colorScheme, isDark ? .dark : .light)
            .navigationTitle("MY ANIME LIST").foregroundColor(.blue)
        }
        
    }

}

struct AnimeList_Previews: PreviewProvider {
    static var previews: some View {
        AnimeList()
    }
}
