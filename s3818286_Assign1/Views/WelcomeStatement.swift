//
//  WelcomeStatement.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 04/08/2022.
//

import SwiftUI

struct WelcomeStatement: View {
    @State var isWelcome: Bool = true
    var body: some View {
        ZStack{
            if isWelcome{
                WelcomeView(active: $isWelcome)
            }
            else{
                AnimeList()
            }
        }
    }
}

struct WelcomeStatement_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeStatement()
    }
}
