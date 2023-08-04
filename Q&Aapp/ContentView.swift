//
//  ContentView.swift
//  Q&Aapp
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var answeredGreen = ""
    @State private var answeredPurple = ""
    @State private var answeredBlack = ""
    var body: some View {
        
       NavigationStack {
           VStack {
               HStack{
                   Text("What's your favorite color?")
                       .padding()
                   Button("Green") {
                       answeredGreen = "People see you as a generous, positive, and diplomatic person."
                       answeredBlack = ""
                       answeredPurple = ""
                   } // closing button
                   .buttonStyle(.borderedProminent)
                   
               }// closing 1st h stack
               Spacer()
                   .frame(height:100)
               HStack{
                   Button("Purple") {
                       answeredPurple = "People see you as an imaginative, intuitive, and emotional person."
                       answeredBlack = ""
                       answeredGreen = ""
                   } // closing button
                   .buttonStyle(.borderedProminent)
                   Spacer()
                       .frame(width: 150)
                   Button("Black") {
                       answeredBlack = "People see you as a determined, independent, and mysterious person."
                       answeredPurple = ""
                       answeredGreen = ""
                   }
                   .buttonStyle(.borderedProminent)
               } // closing second h stack
               .multilineTextAlignment(.center)
                
               Spacer()
                   .frame(height:100)
               Text(answeredGreen)
               Text(answeredPurple)
               Text(answeredBlack)
              
               NavigationLink(destination: SecondView()) {
                   Text("Next")
                       .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)

               }
           } // closing v stack
        } // closing nav stack
        
        
            } //closing view
} //closing struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
