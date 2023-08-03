//
//  ContentView.swift
//
//  Maps
//
//  Created by Student21 on 03/08/23.
//
import SwiftUI
import CoreLocation
import _MapKit_SwiftUI

struct ContentView: View {
    
    let locais = [
        Location(name: "Uberlândia", coordinate: CLLocationCoordinate2D(latitude: -18.919894, longitude: -48.261235), flag: "https://vdrbandeiras.com.br/Eshop.Admin/imagens/vdrbandeiras/Thumbs/TN500_Uberlandia.jpg", description: "Essa cidade é quente pra caralho"),
        
        Location(name: "São Paulo", coordinate: CLLocationCoordinate2D(latitude: -23.540630, longitude: -23.540630), flag: "https://s4.static.brasilescola.uol.com.br/be/2021/05/bandeira-sp.jpg", description: "Essa cidade fede"),
        
        Location(name: "Ribeirão Preto", coordinate: CLLocationCoordinate2D(latitude: -21.164256, longitude: -47.858864), flag: "https://media.revide.com.br/cache/5b/13/5b13028420241a9a820814358b3c1acc.jpg", description: "Só tem gente chata")
    ]
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -18.919894, longitude: -48.261235), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    @State private var region_aux: String = ""
    
    @State private var descricao = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("World Map")
                Text("\(region_aux)")
                
                Map(coordinateRegion: $region, annotationItems: locais) { locais in
                    MapAnnotation(coordinate: locais.coordinate) {
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 20, height: 20)
                            .onTapGesture {
                                descricao.toggle()
                            }
                            .sheet(isPresented: $descricao) {
                                Text("\(locais.name)")
                                AsyncImage(url: URL(string: locais.flag),
                                           content: { image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: 100, maxHeight: 100)
                                },
                                           placeholder: {
                                    ProgressView()
                                })
                                Text("\(locais.description)")
                            }
                    }
                } //Finalizaçao do Map com mapannotation e sheet view
            }
            ScrollView (.horizontal){
                HStack{
                    ForEach(locais) { locai in
                        Button(locai.name) {
                            region_aux = locai.name
                            
                            region = MKCoordinateRegion(center: locai.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
                        }
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .buttonStyle(.borderedProminent)
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
