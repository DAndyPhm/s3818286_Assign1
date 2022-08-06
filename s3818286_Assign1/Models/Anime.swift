//
//  Anime.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
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
