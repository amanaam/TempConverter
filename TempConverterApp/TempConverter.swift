//
//  TempConverter.swift
//  TempConverterApp
//
//  Created by Abdul Manaam on 9/14/21.
//

import Foundation

class TempConverter {
  var inputTemp: Int = 0
  var convertedTemp: Int = 0
  var convertedTempDisplay: String = "0"
  var tempUnits: String = "°F"
  var newUnits: String = "°C"

  // Separated functions to check the absolute value cases, by unit
  private func tempBelowAbsoluteZeroFtoC(temp: Int) -> Bool {
    return (temp < -454)
  }
  
  private func tempBelowAbsoluteZeroCtoF(temp: Int) -> Bool {
    return temp < -270
  }
  
  // Separated functions for temperature converstion, by unit
  private func convertFtoC(temp: Int) -> Int {
    if tempBelowAbsoluteZeroFtoC(temp: temp) {
      return -1000
    }
    return 5 * (temp - 32) / 9
  }

  private func convertCtoF(temp: Int) -> Int {
    if tempBelowAbsoluteZeroCtoF(temp: temp) {
      return -1000
    }
    return (9 * temp) / 5 + 32
  }

  // Call the appropriate conversion function based on unit and update display variables
  func convert(temp: Int) -> String {
    if tempUnits == "°F"{
      if tempBelowAbsoluteZeroFtoC(temp :temp){
        return "N/A"
      }
      return String(convertFtoC(temp :temp))
    }else{
      if tempBelowAbsoluteZeroCtoF(temp :temp){
        return "N/A"
      }
      return String(convertCtoF(temp :temp))
    }
  }
  
  func toggleUnits() {
    let a = tempUnits
    tempUnits = newUnits
    newUnits = a
  }
  
}
