//
//  SpotifyCategoryCell.swift
//  SwiftfulSwiftUIinPracticeApp
//
//  Created by jyotirmoy_halder on 12/10/25.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title: String = "Music"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        VStack(spacing: 40){
            SpotifyCategoryCell(title: "Title goes here")
            
            SpotifyCategoryCell(title: "All", isSelected: true)
            
            SpotifyCategoryCell(isSelected: true)

        }
    }
}
