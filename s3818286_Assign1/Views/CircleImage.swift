//
//  CircleImage.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 02/08/2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white),lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("tom-huynh"))
            .previewLayout(.sizeThatFits)
    }
}
