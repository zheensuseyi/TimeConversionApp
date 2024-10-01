//
//  MinutesToSecondsView.swift
//  unitConversionApp
//
//  Created by Zheen Suseyi on 9/30/24.
//

// Pretty much the same code as HoursToMinutes
import SwiftUI

struct MinutesToSecondsView: View {
    @State private var seconds = 0.0
    @State private var minutes = 0.0

    var minuteToSecond: Double {
        let newConvertMS = minutes * 60.0
        return newConvertMS
    }
    
    var body: some View {
        VStack{
            Form {
                Section {
                    TextField("Enter Minutes: ", value: $minutes, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }header: {
                    Text("Enter Number Of Minutes ")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    }
                Section {
                    Text(minuteToSecond, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }header: {
                    Text("Total Number of Seconds from Minutes!")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    MinutesToSecondsView()
}

