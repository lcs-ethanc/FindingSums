//
//  DivideView.swift
//  FindingSums
//
//  Created by Pak Ching Ethan Chen on 2025-01-13.
//

import SwiftUI

struct DivideView: View {
    // MARK: Stored properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // MARK: Computed properties
    var quotient : Int{
        return firstNumber*secondNumber
    }
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
 
                Spacer()
 
                Text("\(firstNumber)")
                    .font(.system(size: 60))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            
            Stepper(value: $firstNumber, label: {
                Text("Select First Number")
            })
            //allows user to provide input on + or -
            //$ is a binder, connecting stepper to value of base
            
            HStack(alignment: .top) {
 
                Text("/")
                    .font(.system(size: 60))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
 Spacer()
 
                Text("\(secondNumber)")
                    .font(.system(size: 60))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            
            Stepper(value: $secondNumber, label: {
                Text("Select Second Number")
            })
            HStack{
                Spacer()
                Text("\(quotient)")
                    .font(.system(size:60))
            }
  
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DivideView()
}
