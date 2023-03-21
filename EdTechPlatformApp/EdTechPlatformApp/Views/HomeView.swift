//
//  ContentView.swift
//  EdTechPlatformApp
//
//  Created by Niyati Belathur on 2/27/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                ForEach(model.modules) {
                    module in /*HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description) */
                    
                    //learning card
                    ZStack {
                        
                        Rectangle().foregroundColor(.white).cornerRadius(10).shadow(radius: 5).aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                        
                        HStack {
                            //image
                            Image(module.content.image).resizable().frame(width: 116, height: 116).clipShape(Circle())
                            
                            
                            
                            //text
                            VStack(alignment: .leading, spacing: 10) {
                                
                                //headline
                                //concatenating but \() is fordynamic entries
                                Text("Learn \(module.category)").bold()
                                
                                //description
                                Text("\(module.content.description)").padding(.bottom, 20)
                                
                                //icons
                                HStack {
                                    
                                    //# of lessons or questions
                                    Image(systemName: "text.book.closed").resizable().frame(width: 15, height: 15)
                                    Text("\(module.content.lessons.count)" + " lessons").font(.caption)
                                    
                                    //time
                                    Image(systemName: "clock")
                                    Text("\(module.content.time)").font(.caption)
                                    
                                }
                                
                            }
                            
                            
                            //
                            
                            //
                            
                            //
                        }.padding(.horizontal, 20)
                        
                    }
                    
                    //quiz card (replica of learning card but pulls from different data source)
                    
                    ZStack {
                        
                        Rectangle().foregroundColor(.white).cornerRadius(10).shadow(radius: 5).aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                        
                        HStack {
                            //image
                            Image(module.quiz.image).resizable().frame(width: 116, height: 116).clipShape(Circle())
                            
                            
                            
                            //text
                            VStack(alignment: .leading, spacing: 10) {
                                
                                //headline
                                //concatenating but \() is fordynamic entries
                                Text("\(module.category) Quiz").bold()
                                
                                //description
                                Text("\(module.quiz.description)").padding(.bottom, 20)
                                
                                //icons
                                HStack {
                                    
                                    //# of lessons or questions
                                    Image(systemName: "text.book.closed").resizable().frame(width: 15, height: 15)
                                    Text("\(module.quiz.questions.count)" + " lessons").font(.caption)
                                    
                                    //time
                                    Image(systemName: "clock")
                                    Text("\(module.quiz.time)").font(.caption)
                                    
                                }
                                
                            }
                            
                            
                            //
                            
                            //
                            
                            //
                        }.padding(.horizontal, 20)
                        
                    }
                    
                    
                }
            }
            .padding()
        
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ContentModel())
    }
}

