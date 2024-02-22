

import SwiftUI

struct PlayerView: View {

    var animation: Namespace.ID
    @Binding var expandSheet: Bool
    @State private var animateContent: Bool = false
    @State private var offsetY: CGFloat = 0
    var screen = UIScreen.main.bounds.size.height
    var width = UIScreen.main.bounds.size.width / 2
    @State var volume: Double = 0
    @State var duration: Double = 0

    var body: some View {
        GeometryReader { _ in
//            let size = $0.size
//            let safeArea = $0.safeAreaInsets

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

                LinearGradient(gradient: Gradient(colors: [Color.beige, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)


                VStack(spacing: 15) {
                    Button(action: { expandSheet.toggle() },
                           label: {
                        Image(systemName: "minus")
                            .imageScale(.large)
                            .font(.system(size: 50))
                            .tint(.white)
                            .opacity(0.8)
                            .frame(width: 50, height: 50)
                            .padding()
                    })

//                    Spacer()

                    Image("single")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: width, height: width)
                        .cornerRadius(15)

//                    Spacer()

                    HStack {
                        VStack(alignment: .leading) {
                            Text(single)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                            Text(artist)
                                .font(.title2)
                                .foregroundStyle(.white)
                                .opacity(0.6)
                        }
                        .padding(.leading)
                        
                        Spacer()

                        Button(action: {}, label: {
                            Image(systemName: "ellipsis.circle")
                                .frame(width: 50, height: 50)
                                .font(.title)
                                .opacity(0.4)
                                .foregroundStyle(.white)
                        }).padding()

                    }

//                    Spacer()

                    Slider(value: $duration, in: 0...4.12, step: 0.01)
                        .tint(.white)
                    HStack {
                        Text(ridZero(result: duration))
                        Spacer()
                        Text("- \(ridZero(result: (4.12 - duration)))")
                    }
                    .foregroundStyle(.white)


                    HStack(spacing: 60) {
                        Button(action: {}, label: {
                            Image(systemName: "backward.fill")
                                .font(.title)
                                .foregroundStyle(.white)
                        })
                        .padding()


                        Button(action: {}, label: {
                            Image(systemName: "play.fill")
                                .font(.title)
                                .foregroundStyle(.white)
                        })
                        .padding()


                        Button(action: {}, label: {
                            Image(systemName: "forward.fill")
                                .font(.title)
                                .foregroundStyle(.white)
                        })
                    }

                    HStack (spacing: 15) {
                        Image(systemName: "speaker.fill")
                            .font(.title2)
                            .foregroundStyle(.white)

                        Slider(value: $volume, in: 0...100, step: 0.1)
                            .tint(.white)
                            .controlSize(.mini)
                            .onAppear {
                                let circle = UIImage.SymbolConfiguration(scale: .small)
                                UISlider.appearance().setThumbImage(UIImage(systemName: "circle.fill", withConfiguration: circle), for: .normal)
                            }


//                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
//
//                            Capsule()
//                                .fill(Color.black.opacity(0.06))
//                                .frame(height: 5)
//                            Capsule()
//                                .fill(Color.white)
//                                .frame(width: volume, height: 4)
//
//                            Circle()
//                                .fill(Color.white)
//                                .frame(width: 20, height: 20)
//                                .offset(x: volume)
////                                .gesture(DragGesture().onChanged(<#T##action: (DragGesture.Value) -> Void##(DragGesture.Value) -> Void#>))
//                        })
//                        .padding()

                        Image(systemName: "speaker.wave.3.fill")
                            .font(.title2)
                            .foregroundStyle(.white)

                    }
//                    Spacer()

                    HStack(spacing: 50) {
                        Button(action: {}, label: {
                            Image(systemName: "ellipsis.bubble")
                                .font(.title)
                                .opacity(0.8)
                                .foregroundStyle(.white)
                        })
                        .padding()


                        Button(action: {}, label: {
                            Image(systemName: "airplayaudio")
                                .font(.title)
                                .opacity(0.8)
                                .foregroundStyle(.white)
                        })
                        .padding()


                        Button(action: {}, label: {
                            Image(systemName: "list.bullet")
                                .font(.title)
                                .opacity(0.8)
                                .foregroundStyle(.white)
                        })
                        .padding()

                    }
                    .padding(.bottom, 10)


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
                .padding()

            }
        }
        .ignoresSafeArea(edges: .all)
        }

    func ridZero(result: Double) -> String {
            let value = String(format: "%g", result)
            return value
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
