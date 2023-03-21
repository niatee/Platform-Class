//
//  HomeViewRow.swift
//  EdTechPlatformApp
//
//  Created by Niyati Belathur on 3/6/23.
//

import SwiftUI

struct HomeViewRow: View {
    
    //decleration of string inputs to homeviewrow
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    
    var body: some View {
        
        ZStack {
            
            Rectangle().foregroundColor(.white).cornerRadius(10).shadow(radius: 5).aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack {
                //image
                Image(image).resizable().frame(width: 116, height: 116).clipShape(Circle())
                
                
                
                //text
                VStack(alignment: .leading, spacing: 10) {
                    
                    //headline
                    //concatenating but \() is fordynamic entries
                    Text(title).bold()
                    
                    //description
                    Text(description).padding(.bottom, 20)
                    
                    //icons
                    HStack {
                        
                        //# of lessons or questions
                        Image(systemName:"text.book.closed").resizable().frame(width: 15, height: 15)
                        Text(count).font(.caption)
                        
                        //time
                        Image(systemName: "clock")
                        Text(time).font(.caption)
                        
                    }
                    
                }
        
        
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow()
    }
}
