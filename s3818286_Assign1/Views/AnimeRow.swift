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

import Foundation
import SwiftUI

struct AnimeRow: View {
    var anime: Anime
    var body: some View {
        ZStack {
            Image(anime.imageName)
                .resizable()
                .frame(width: 330, height: 180, alignment: .center)
                .cornerRadius(15)
//            Text(anime.name)
//                .bold()
//                .foregroundColor(.orange)
//                .font(.system(size: 23))
            
        }
    }
}
