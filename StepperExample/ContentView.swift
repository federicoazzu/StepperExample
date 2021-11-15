//
//  ContentView.swift
//  StepperExample
//
//  Created by Federico on 15/11/2021.
//

import SwiftUI

struct ContentView: View {
   @State private var amount = 10
    
    var body: some View {
        VStack {
            Text("Total: \(amount)")
                .font(.title2)
                .bold()
            Stepper("Enter an amount: \(amount)", value: $amount, in: 0...200)
            
            // You can also override onIncrement & onDecrement by removing the value parameter and calling those instead.
        }
        .labelsHidden()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
