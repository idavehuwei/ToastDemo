// Toast.swift

import SwiftUI
struct Toast: ViewModifier {
    @Binding var message: String
    @Binding var isShowing: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            content
            if isShowing {
                VStack {
                    Text(message)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.horizontal, 50)
                        .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
                        .animation(.easeInOut(duration: 0.3))
                        .onAppear(perform: {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    isShowing = false
                                }
                            }
                        })
                        .zIndex(1)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.clear)
                .transition(AnyTransition.opacity.combined(with: .scale))
                .animation(.easeInOut(duration: 0.3))
            }
        }
    }
}

extension View {
    func toast(message: Binding<String>, isShowing: Binding<Bool>) -> some View {
        self.modifier(Toast(message: message, isShowing: isShowing))
    }
}
