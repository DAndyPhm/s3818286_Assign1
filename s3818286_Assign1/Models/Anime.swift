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

//

import Foundation
import SwiftUI

struct Anime: Identifiable{
    var id: Int
    var name: String
    var genre: String
    var producer: String
    var broadcastYear: String
    
    var rating: Int
    var plot: String
    var review: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var videoID: String
}
