//
//  NetflixMovieDetailsView.swift
//  SwiftfulSwiftUIinPracticeApp
//
//  Created by jyotirmoy_halder on 22/10/25.
//

import SwiftUI

struct NetflixMovieDetailsView: View {
    
    var product: Product = .mock
    
    @State private var progress: Double = 0.2
    
    var body: some View {
        ZStack {
            Color.netflixBlack.ignoresSafeArea()
            Color.netflixDarkGray.opacity(0.3).ignoresSafeArea()
            
            VStack(spacing: 0) {
                NetflixDetailsHeaderView(
                    imageName: product.firstImage,
                    progress: progress,
                    onAirplayPressed: {
                        
                    },
                    onXMarkPressed: {
                        
                    }
                )
                
                ScrollView(.vertical) {
                    VStack(spacing: 16) {
                        NetflixDetailsProductView(
                            title: product.title,
                            isNew: true,
                            yearReleased: "2025",
                            seasonCount: 6,
                            hasClosedCaptions: true,
                            isTopTen: 5,
                            descriptionText: product.description,
                            castText: "Cast: Jyoti",
                            onPlayPressed: {
                                
                            },
                            onDownloadPressed: {
                                
                            }
                        )
                    }
                    .padding(8)
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    NetflixMovieDetailsView()
}
