//
//  SecondView.swift
//  Q&Aapp
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct SecondView: View {
    @State private var answeredGreen = ""
    @State private var answeredPurple = ""
    @State private var answeredBlack = ""
    var body: some View {
        
       NavigationStack {
           VStack {
               HStack{
                   Text("Do you like sweet, salty, or sour foods?")
                       .padding()
                   Button("Sweet") {
                       answeredGreen = "You tend to agree with most and act selflessly."
                       answeredBlack = ""
                       answeredPurple = ""
                   } // closing button
               }// closing 1st h stack
               Spacer()
                   .frame(height:100)
               HStack{
                   Button("Salty") {
                       answeredPurple = "You can be a competitive and impatient individual at times."
                       answeredBlack = ""
                       answeredGreen = ""
                   } // closing button
                   Spacer()
                       .frame(width: 150)
                   Button("Sour") {
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
              
               NavigationLink(destination: ThirdView()) {
                   Text("Next")
                       .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)

               }
           } // closing v stack
        } // closing nav stack
        
        
            } //closing view
} //closing struct

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
