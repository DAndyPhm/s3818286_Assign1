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

struct StarRating: View {
    var rating: Int
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack{
            if label.isEmpty == false{
                Text(label)
            }
            ForEach(1..<maximumRating + 1, id: \.self) {number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating{
            return offImage ?? onImage
        } else{
            return onImage
        }
    }
    
}
