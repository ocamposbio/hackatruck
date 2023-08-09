//
//  ContentView.swift
//  crud
//
//  Created by Student21 on 09/08/23.
//


import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Rectangle()
                LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("Quitanda Finder")
                    ScrollView{
                        ForEach(viewModel.quitandas) { quitanda in
                            NavigationLink(destination: QuitandaView(quitandas)){
                                HStack {
                                    Text(quitandas.endereçoQuitanda)
                                        .foregroundColor(.black)
                                        .font(.title2)
                                } //HStack
                            } //NavigationLink
                        } //ForEach
                    } //Scroll View
                } //VStack
                .padding()
            } //ZStack
        } //NavigationStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
