//
//  ContentView.swift
//  StepperExample
//
 
import SwiftUI
 
struct ContentView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    // @State makes the interface change in real-time to the property's value. A property wrapper
    
    // MARK: Computed properties
    var squared: Int{
        return base*base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
 
                Text("(\(base))")
                    .font(.system(size: 96))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
 
                Text("2")
                    .font(.system(size: 44))
 
                Text("=")
                    .font(.system(size: 96))
 
                Text("\(squared)")
                    .font(.system(size: 96))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            
            Stepper(value: $base, label: {
                Text("Base")
            })
            //allows user to provide input on + or -
            //$ is a binder, connecting stepper to value of base
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    ContentView()
}
 
