//
//  RecipeListFeatured.swift
//  Recipe List
//
//  Created by Duan Dang on 10/14/22.
//

import SwiftUI

struct RecipeListFeaturedView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top,40)
                .font(.largeTitle)
            GeometryReader { geo in
                TabView {
                    
                    ForEach (0..<model.recipes.count) { index in
                        if model.recipes[index].featured {
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(Color.white)
                                
                                VStack(spacing: 0) {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                }
                            }
                            .frame(width: geo.size.width-40,height: geo.size.height-100,alignment: .center)
                            .cornerRadius(15)
                            .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.6), radius: 10, x: -5, y: 5)
                            
                        }
                        
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            VStack(alignment: .leading, spacing:10) {
               Text("Preparation time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, hearty")
            }.padding([.leading,.bottom])
        }
    }
}

struct RecipeListFeatured_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListFeaturedView()
            .environmentObject(RecipeModel())
    }
}
