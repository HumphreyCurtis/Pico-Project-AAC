//
//  MenuView.swift
//  PicoProjectAAC
//
//  Created by Humphrey Curtis on 25/03/2024.
//

import SwiftUI

struct MenuView: View {
    
    let pages: [Page] = pagesData
    @State private var pageIndex: Int = 1
    
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Local Maps").bold()) {
                    NavigationLink {
                        PageView(projectionName: "TFL Tube Map", imageName: "standard-tube-map")
                    } label : {
                        Text("TFL Tube Map")
                    }
                    NavigationLink {
                        PageView(projectionName: "London Boroughs", imageName: "london-boroughs-map")
                    } label : {
                        Text("London Boroughs")
                    }
                    NavigationLink {
                        PageView(projectionName: "Map of the British Isles", imageName: "map-of-uk")
                    } label : {
                        Text("Map of the British Isles")
                    }

                }
                    
                Section(header: Text("Continents").bold()) {
                    NavigationLink {
                        PageView(projectionName: "Map of Africa", imageName: "map-africa")
                    } label : {
                        Text("Map of Africa")
                    }
                    NavigationLink {
                        PageView(projectionName: "Map of Asia", imageName: "map-asia")
                    } label : {
                        Text("Map of Asia")
                    }
                    NavigationLink {
                        PageView(projectionName: "Map of the Middle East", imageName: "map-middle-east")
                    } label : {
                        Text("Map of the Middle East")
                    }
                    NavigationLink {
                        PageView(projectionName: "Map of North America", imageName: "map-north-america")
                    } label : {
                        Text("Map of North America")
                    }
                    NavigationLink {
                        PageView(projectionName: "Map of Oceania", imageName: "map-of-oceania")
                    } label : {
                        Text("Map of Oceania")
                    }
                    NavigationLink {
                        PageView(projectionName: "Map of South America", imageName: "map-of-south-america")
                    } label : {
                        Text("Map of South America")
                    }

                  
                }
                
//                Section(header: Text("Capitals").bold()) {
//                    
//                }
                
                Section(header: Text("Arts").bold()) {
                    NavigationLink {
                        PageView(projectionName: "Mona Lisa", imageName: "mona-lisa")
                    } label : {
                        Text("The Mona Lisa")
                    }
                    NavigationLink {
                        PageView(projectionName: "Nighthawks", imageName: "nighthawks")
                    } label : {
                        Text("Nighthawks")
                    }
                    NavigationLink {
                        PageView(projectionName: "The Great Wave", imageName: "the-great-wave")
                    } label : {
                        Text("The Great Wave")
                    }
                    NavigationLink {
                        PageView(projectionName: "The Girl with the Pearl Earring", imageName: "the-girl-with-the-pearl-earring")
                    } label : {
                        Text("The Girl with the Pearl Earring")
                    }
                    NavigationLink {
                        PageView(projectionName: "The Kiss", imageName: "the-kiss")
                    } label : {
                        Text("The Kiss")
                    }
                    NavigationLink {
                        PageView(projectionName: "The Scream", imageName: "the-scream")
                    } label : {
                        Text("The Scream")
                    }
                }
                
                Section(header: Text("Sports Teams").bold()) {
                    NavigationLink {
                        PageView(projectionName: "England FC", imageName: "england-fc")
                    } label : {
                        Text("England Football Team")
                    }
                    NavigationLink {
                        PageView(projectionName: "Arsenal FC", imageName: "arsenal-fc")
                    } label : {
                        Text("Arsenal Football Team")
                    }
                    NavigationLink {
                        PageView(projectionName: "Emirates Stadium", imageName: "emirates-stadium")
                    } label : {
                        Text("Emirates Stadium")
                    }
                }
                
                Section(header: Text("Attention").bold()) {
                    NavigationLink {
                        LogoView(projectionName: "figure.roll", colour: Color.blue)
                    } label : {
                        Text("Disability")
                    }
                    
                    NavigationLink {
                        LogoView(projectionName: "cup.and.saucer.fill", colour: Color.brown)
                    } label : {
                        Text("Coffee")
                    }
                    
                    NavigationLink {
                        LogoView(projectionName: "chair", colour: Color.red)
                    } label : {
                        Text("Seat")
                    }
                    
                    
                    NavigationLink {
                        PageView(projectionName: "Aphasia", imageName: "aphasia-reconnect")
                    } label : {
                        Text("Aphasia Re-Connect")
                    }
                    
                    NavigationLink {
                        PageView(projectionName: "Angel Station", imageName: "angel-station")
                    } label : {
                        Text("Angel Station")
                    }
                    
                    NavigationLink {
                        ImageView()
                    } label : {
                        Text("Image")
                    }
                }

            }
            .navigationTitle("Pico Project AAC")
            .navigationBarTitleDisplayMode(.inline)
        }
     
    }
}

#Preview {
    MenuView()
}
