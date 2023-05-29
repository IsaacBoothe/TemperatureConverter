//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Isaac Boothe on 5/27/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("Temperature Converter")
                .font(.system(size: 25))
                .bold()
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(5)
            
            Spacer()
            
            VStack{
                TextField("Enter Temperature:", text: $viewModel.input)
                    .padding()
                    .foregroundColor(Color.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 3)
                        )
                    
                Toggle("to \(viewModel.tempType ? "Cels:" : "Fahr:")", isOn: $viewModel.tempType)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(5)
                
                Button("Convert") {
                    viewModel.convertTemp()
                }
                
                TextField("Result: ", text: $viewModel.result)
                    .disabled(true)
                    .padding()
                    .foregroundColor(Color.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.blue, lineWidth: 3)
                    )
                
                }.frame(width: 200, alignment: .center)
            
            Spacer()
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.gray)

                
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
        }
    }
}
