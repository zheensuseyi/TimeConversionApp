//
//  HoursToMinutesView.swift
//  unitConversionApp
//
//  Created by Zheen Suseyi on 9/30/24.
//

//HourToMinutesView Screen
import SwiftUI

struct HoursToMinutesView: View {
    // Setting variables that will be binded and changed
    @State private var minutes = 0.0
    @State private var hours = 0.0
    
    // Formula for hour to minutes conversion
    var hourToMinute: Double {
        let newConvertHM = hours * 60.0
        return newConvertHM
    }
    var body: some View {
        VStack{
            Form {
                Section() {
                    // TextField for the user to enter the number of hours
                    TextField("Enter hours: ", value: $hours, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                // Header Title
                }header: {
                Text("Enter Number Of Hours ")
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                }
                
                // Section for the output of the number of hours to minutes
                Section {
                    Text(hourToMinute, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    
                // Header Title
                }header: {
                    Text("Total Number of Minutes from hours!")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    HoursToMinutesView()
}
