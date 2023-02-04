//
//  FruitDeatilView.swift
//  Fructus
//
//  Created by Zach Johnson on 2/4/23.
//

import SwiftUI

struct FruitDeatilView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        
                        //SUBHEADLINE
                        Text("Lean more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}

// MARK: - PREVIEW

struct FruitDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDeatilView(fruit: fruitsData[0])
    }
}
