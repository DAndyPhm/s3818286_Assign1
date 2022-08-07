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
