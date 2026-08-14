//
//  PageView.swift
//  PicoProjectAAC
//
//  Created by Humphrey Curtis on 25/03/2024.
//

import SwiftUI

struct PageView: View {
    
    //MARK: - Property
    @State var projectionName: String
    @State var imageName: String
    
    @State private var isAnimating: Bool = false
    
    @State private var imageOffset: CGSize = .zero
    @State private var currentZoom = 0.0
    @State private var totalZoom = 1.0
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ZStack {
                Color.clear
            
                
                //MARK: - Page Image
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimating)
                    .offset(imageOffset)
                    .scaleEffect(currentZoom + totalZoom)
                //MARK: - Tap Gesture
                    .onTapGesture(count: 2, perform: {
                        if totalZoom == 1.0 {
                            withAnimation(.spring()) {
                                totalZoom = 7.0
                            }
                        } else {
                            resetImageState()
                        }
                    })
                //MARK: - Drag Gesture
                    .gesture(
                          DragGesture()
                              .onChanged{ value in
                                  withAnimation(.spring()){
                                      imageOffset = value.translation
                                  }
                              }
                          
//                              .onEnded{ value in
//                                  withAnimation(.spring()){
//                                      imageOffset = .zero
//                                  }
//                              }
                      )
                //MARK: - Magnification Gesture
                    .gesture(
                        MagnifyGesture()
                            .onChanged { value in
                                currentZoom = value.magnification - 1
                            }
                            .onEnded { value in
                                totalZoom += currentZoom
                                currentZoom = 0
                            }
                    )
                    .accessibilityZoomAction { action in
                        if action.direction == .zoomIn {
                            totalZoom += 1
                        } else {
                            totalZoom -= 1
                        }
                    }
        
            }
            .onAppear(perform: {
                isAnimating = true
            })
            //MARK: - Info Panel
            .overlay (
                InfoPanelView(scale: currentZoom+totalZoom, offset: imageOffset)
//                    .padding()
//                , alignment: .top
                   
            )
            //MARK: - Controls
            .overlay(
                Group {
                    HStack {
                        // Scale Down
                        Button {
                            withAnimation(.spring()) {
                                if totalZoom > 1.0 {
                                    totalZoom -= 1
                                }
                            }
                        } label: {
                           ControlImageView(icon: "minus.magnifyingglass")
                        }
                        // Reset
                        Button {
                            resetImageState()
                        } label: {
                           ControlImageView(icon: "arrow.up.left.and.down.right.magnifyingglass")
                        }
                        // Scale Up
                        Button {
                            withAnimation(.spring()) {
                                if totalZoom < 10.0 {
                                    totalZoom += 1
                                }
                            }
                        } label: {
                           ControlImageView(icon: "plus.magnifyingglass")
                        }
                    } //Controls
                    .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                    .background(.ultraThinMaterial)
                    .cornerRadius(12)
                    .opacity(isAnimating ? 1 : 0)
                }
                    .padding(30)
                , alignment: .bottom
            )
            
        } //: NavigationView
        .navigationViewStyle(.stack)
        
    }
    
    //MARK: - Functions
    func resetImageState() {
        return withAnimation(.spring()) {
            currentZoom = 0.0
            totalZoom = 1.0
            imageOffset = .zero
        }
    }
    
}

#Preview {
    PageView(projectionName: "Tube Map", imageName: "standard-tube-map")
}
