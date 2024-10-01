//
//  DaysToHoursView.swift
//  unitConversionApp
//
//  Created by Zheen Suseyi on 9/30/24.
//

// Pretty much the same code as HoursToMinutes

import SwiftUI

struct DaysToHoursView: View {
    @State private var hours = 0.0
    @State private var days = 0.0

    var hoursToDays: Double {
        let newConvertHD = days * 24
        return newConvertHD
    }
    
    var body: some View {
        VStack{
            Form {
                Section {
                    TextField("Enter Days: ", value: $days, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }header: {
                    Text("Enter Number Of Days ")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    }
                Section {
                    Text(hoursToDays, format: .number)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }header: {
                    Text("Total Number of Hours from Days!")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    DaysToHoursView()
}

