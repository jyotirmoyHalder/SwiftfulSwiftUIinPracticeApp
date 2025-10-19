//
//  NetflixFilterBarView.swift
//  SwiftfulSwiftUIinPracticeApp
//
//  Created by jyotirmoy_halder on 19/10/25.
//

import SwiftUI

struct FilterModel: Hashable, Equatable {
    let title: String
    let isDropdown: Bool
    
    static var mockArray: [FilterModel] {
        [
            FilterModel(title: "TV Shows", isDropdown: false),
            FilterModel(title: "Movies", isDropdown: false),
            FilterModel(title: "Category", isDropdown: true)
        ]
    }
}

struct NetflixFilterBarView: View {
    
    var filters: [FilterModel] = FilterModel.mockArray
    @State private var selectedFilter: FilterModel? = nil
    var onXMarkPressed: (() -> Void)? = nil
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                 if selectedFilter != nil {
                     Image(systemName: "xmark")
                         .padding(8)
                         .background(
                             Circle()
                                 .stroke(lineWidth: 1)
                         )
                         .foregroundStyle(.netflixLightGray)
                         .background(Color.black.opacity(0.001))
                         .onTapGesture {
                             onXMarkPressed?()
                         }
                }
                
                ForEach(filters, id: \.self) { filter in
                    NetflixFilterCell(
                        title: filter.title,
                        isDropdown: filter.isDropdown,
                        isSelected: selectedFilter == filter
                    )
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {
                        selectedFilter = filter
                    }
                }
            }
            .padding(.vertical, 4)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        NetflixFilterBarView()
    }
}
