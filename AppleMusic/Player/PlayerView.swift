//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Христина Буянова on 17.02.2024.
//

import SwiftUI

struct PlayerView: View {

    var animation: Namespace.ID
    @Binding var expandSheet: Bool
    @State private var animateContent: Bool = false
    @State private var offsetY: CGFloat = 0
    var screen = UIScreen.main.bounds.size.height

    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets

            ZStack {
                RoundedRectangle(cornerRadius: animateContent ? deviceCornerRadius : 0, style: .continuous)
                    .fill(.ultraThickMaterial)
                    .overlay {
                        Rectangle()
                            .fill(.gray.opacity(0.4))
                            .opacity(animateContent ? 1: 0)
                    }
                    .overlay(alignment: .top) {
                        MiniPlayerView(animation: animation, expandSheet: $expandSheet)
                            .allowsHitTesting(false)
                            .opacity(animateContent ? 1: 0)
                    }
                    .matchedGeometryEffect(id: "BACKGROUNDVIEW", in: animation)

                LinearGradient(gradient: Gradient(colors: [Color.beige, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                    .frame(height: screen)

                VStack(spacing: 15) {
                    Image(systemName: "minus")
                        .imageScale(.large)
                        .font(.title)
                        .onTapGesture {
                            expandSheet.toggle()
                            
                        }
                    Spacer()

                    Image("single")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .cornerRadius(15)

                    Spacer()

                    HStack {
                        VStack(alignment: .leading) {
                            Text(single)
                                .font(.title)
                                .bold()
                            Text(artist)
                                .font(.title2)
                        }
                        .padding(.leading)
                        
                        Spacer()
                        Image(systemName: "ellipsis.circle.fill")
                            .frame(width: 50, height: 50)
                            .font(.title)
                            .opacity(0.4)

                    }
                    .padding([.leading, .trailing], 20)
                    Spacer()

//                    GeometryReader {
//                        let size = $0.size
//                        Image("single")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: size.width, height: size.height)
//                            .clipShape(RoundedRectangle(cornerRadius: animateContent ? 30 : 60))
//
//                    }
//                    .matchedGeometryEffect(id: "SONGCOVER", in: animation)
//                    .frame(height: size.height - 50)
//                    .padding(.vertical, size.height < 700 ? 30 : 40)
                }
                .padding(.top, 60)
//                .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ContentView()
}

extension View {
    var deviceCornerRadius: CGFloat {
        let key = "_displayCornerRadius"
        if let screen = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.screen{
            if let corneRadius = screen.value(forKey: key) as? CGFloat {
                return corneRadius
            }
            return 0
        }
        return 0
    }
}
