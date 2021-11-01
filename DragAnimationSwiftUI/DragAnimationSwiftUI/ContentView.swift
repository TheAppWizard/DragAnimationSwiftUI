//
//  ContentView.swift
//  DragAnimationSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 01/11/21.
//  The App Wizard
//  Instagram : theappwizard2408

import SwiftUI


struct ContentView: View {
    var body: some View {
        DragAnimation()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






































struct DragAnimation: View {
    @State private var move = 300
    @State private var position = CGPoint(x : 0 , y : 0)
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
                    
           ZStack{
               SquareView(colorMain: Color.gray, widthNew: 100, heightNew: 100)
                           .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.8))

                    
               SquareView(colorMain: Color.green, widthNew: 90, heightNew: 90)
                                .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.7))

//
               SquareView(colorMain: Color.blue, widthNew: 80, heightNew: 80)
                                   .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.6))

               SquareView(colorMain: Color.purple, widthNew: 70, heightNew: 70)
                                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.5))

                
               SquareView(colorMain: Color.yellow, widthNew: 60, heightNew: 60)
                                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.4))

                
                
               SquareView(colorMain: Color.orange, widthNew: 50, heightNew: 50)
                                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.3))

                
               SquareView(colorMain: Color.red, widthNew: 40, heightNew: 40)
                                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.2))

               SquareView(colorMain: Color.red, widthNew: 30, heightNew: 30)
                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).delay(0.1))

                
               SquareView(colorMain: Color.white, widthNew: 20, heightNew: 20)
                                    .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true))

           }
//           .shadow(color: .blue.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
           .position(x : self.position.x ,y: self.position.y)
           .gesture(DragGesture()
                        .onChanged({ value in
                            self.position.x = value.location.x
                            self.position.y = value.location.y
                        })
            
           )
            
        }
                   
    }
}

struct SquareView: View {
    
    @State var colorMain = Color.purple
    @State var widthNew : CGFloat = 1
    @State var heightNew : CGFloat = 1
   
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .stroke(colorMain, lineWidth: 5)
                .frame(width: widthNew, height: heightNew)
            
        }
    }
}
