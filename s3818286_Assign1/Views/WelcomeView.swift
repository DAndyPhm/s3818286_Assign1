//
//  WelcomeView.swift
//  s3818286_Assign1
//
//  Created by An Pham Hoang Thien on 04/08/2022.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var active: Bool
    var body: some View {

        
        ZStack{
            Color.orange
                .opacity(0.7) // Setting the color opacity to 0.5
                .ignoresSafeArea()
            VStack{
                Text("My Recommended Anime List")
                    .font(Font.system(size: 46, weight: .bold))
                    .multilineTextAlignment(.center)
                    .overlay {
                        LinearGradient(
                            colors: [.purple, .blue, .green, .red],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(
                            Text("My Recommended Anime List")
                                .font(Font.system(size: 46, weight: .bold))
                                .multilineTextAlignment(.center)
                        )
                        
                    }
                
                Button(action: {
                                    active = false
                                }, label: {
                                    Capsule()
                                      .fill(Color.blue.opacity(0.6))
                                      .padding(12)
                                      .frame(height:80)
                                      .overlay(Text("CONTINUE")
                                        .font(.system(.title3, design: .rounded))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white))
                                })
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(active: .constant(true))
    }

}

