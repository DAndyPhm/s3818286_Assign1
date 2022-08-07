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
