//
//  ContentView.swift
//  unitConversionApp
//
//  Created by Zheen Suseyi on 9/30/24.
//


/*
 Your challenge
 You need to build an app that handles unit conversions: users will select an input unit and an output unit, then enter a value, and see the output of the conversion.

 Which units you choose are down to you, but you could choose one of these:

 Temperature conversion: users choose Celsius, Fahrenheit, or Kelvin.
 Length conversion: users choose meters, kilometers, feet, yards, or miles.
 Time conversion: users choose seconds, minutes, hours, or days.
 Volume conversion: users choose milliliters, liters, cups, pints, or gallons.
 If you were going for length conversion you might have:

 A segmented control for meters, kilometers, feet, yard, or miles, for the input unit.
 A second segmented control for meters, kilometers, feet, yard, or miles, for the output unit.
 A text field where users enter a number.
 A text view showing the result of the conversion.
 So, if you chose meters for source unit and feet for output unit, then entered 10, you’d see 32.81 as the output.

 You know almost everything you need to build this. In fact, if you go for a simple solution – and I hope you do – the only actually new thing you’ll find is that you need to use a different format option for your text field, because .currency and .percent don’t make sense here. You should choose .number instead, which is suitable for standard numerical input.
 */


// Time Conversion App!
import SwiftUI

struct ContentView: View {
    var body: some View {
        // Wrapping everything in a Navigation Stack so that we can switch screens
        NavigationStack{
            // VStack for alignment,
            VStack{
                Text("Time Converter!")
                    .font(.title)
                Text("Made by Zheen H. Suseyi")
                // Another Vstack for the forms and sections with spacing
                    VStack(spacing: 8){
                        // Form so that a user can click on a box to proceed to next screen
                        Form {
                            // Section so that it isn't just a link its a box
                            // MinutesToSecondsView
                            Section {
                                NavigationLink("Minutes To Seconds Converter", destination: MinutesToSecondsView())
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }
                        // Spacer for clean ui
                        Spacer()
                        
                        // Repeat for the rest of the views
                        Form {
                            Section {
                                NavigationLink("Hours To Seconds Converter", destination: HoursToSecondsView())
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }
                        Spacer()
                        Form {
                            Section {
                                NavigationLink("Hours To Minutes Converter", destination: HoursToMinutesView())
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }
                        Spacer()
                        Form {
                            Section {
                                NavigationLink("Hours To Days Converter", destination: DaysToHoursView())
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}
