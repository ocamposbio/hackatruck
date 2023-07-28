//
//  ContentView.swift
//  CalculadoraIMC
//
//  Created by Student21 on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso = ""
    @State private var altura = ""
    @State private var res = ""
    @State private var color: Color = Color("")
    
    var body: some View {
        
        ZStack {
            
            Rectangle().foregroundColor(color).ignoresSafeArea()
            
            VStack{
                VStack {
                    Text("Calculadora de IMC").font(.title)
                    
                    
                    //TextField para peso
                    TextField("Insira o seu peso", text: $peso)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    //TextField para altura
                    TextField("Insira a sua altura", text: $altura)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    
                    //Botão de calculo do imc
                    Button("Calcular"){
                        let pesoConv = Float(peso) ?? 0.0
                        let alturaConv = Float(altura) ?? 0.0
                        
                        let imc = pesoConv / alturaConv * alturaConv
                        
                        if imc < 18.5 {
                            color = Color("baixoPeso")
                            res = "Baixo Peso"
                        }
                        
                        if imc >= 18.5 && imc <= 24.99 {
                            color =  Color("normal")
                            res = "Normal"
                        }
                        
                        if imc >= 25 && imc <= 29.99 {
                            color = Color("sobrePeso")
                            res = "Sobrepeso"
                        }
                        
                        if imc > 30 {
                            color =  Color("obesidade")
                            res = "Obesidade"
                        }
                        
                    }
                }
                Text(res)
                Spacer()
                Image("imc")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
            }
        } //ZStack
        .padding()
        .ignoresSafeArea()
    }//body
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
