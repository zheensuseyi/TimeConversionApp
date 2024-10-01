//
//  HoursToSecondsView.swift
//  unitConversionApp
//
//  Created by Zheen Suseyi on 9/30/24.
//
// Pretty much the same code as HoursToMinutes
import SwiftUI

struct HoursToSecondsView: View {
    @State private var seconds = 0.0
    @State private var hours = 0.0

    var hoursToSeconds: Double {
        let newConvertHS = hours * 3600
        return newConvertHS
    }
    
    var body: some View {
        VStack{
            Form {
                Section{
                    TextField("Enter Hours: ", value: $hours, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }header: {
                    Text("Enter Number Of Hours")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    }
                Section {
                    Text(hoursToSeconds, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }header: {
                    Text("Total Number of Seconds from Hours!")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    HoursToSecondsView()
}

