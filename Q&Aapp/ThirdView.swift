//
//  ThirdView.swift
//  Q&Aapp
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var answeredGreen = ""
    @State private var answeredPurple = ""
    @State private var answeredBlack = ""
    var body: some View {
        
       NavigationStack {
           VStack {
               HStack{
                   Text("What's your favorite subject?")
                       .padding()
                   Button("History") {
                       answeredGreen = "You tend to agree with most and act selflessly."
                       answeredBlack = ""
                       answeredPurple = ""
                   } // closing button
               }// closing 1st h stack
               Spacer()
                   .frame(height:100)
               HStack{
                   Button("P.E") {
                       answeredPurple = "You can be a competitive and impatient individual at times."
                       answeredBlack = ""
                       answeredGreen = ""
                   } // closing button
                   Spacer()
                       .frame(width: 150)
                   Button("English") {
                       answeredBlack = "You can be a critical and harsh person."
                       answeredPurple = ""
                       answeredGreen = ""
                   }
               } // closing second h stack
               .multilineTextAlignment(.center)
                
               Spacer()
                   .frame(height:100)
               Text(answeredGreen)
               Text(answeredPurple)
               Text(answeredBlack)
              
              
           } // closing v stack
        } // closing nav stack
        
        
            } //closing view
} //closing struct

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
