//
//  ViewController.swift
//  TempConverterApp
//
//  Created by Abdul Manaam on 9/14/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  let tempConverter = TempConverter()
  @IBOutlet weak var inputTempLabel: UILabel!
  @IBOutlet weak var outputTempLabel: UILabel!
  @IBOutlet weak var inputTemp: UITextField!
  @IBOutlet weak var outputTemp: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    inputTemp.text? = "--"
    self.inputTemp.delegate = self
  }
  @IBAction func switchChanged() {
    tempConverter.toggleUnits()
    updateLabels()
  }
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    inputTemp.resignFirstResponder()
    return true
  }
  @IBAction func converter(){
    let userData:String = inputTemp.text!

    if (userData == "") {
      tempConverter.inputTemp = -500
    }
    if let temp=Int(userData){
      tempConverter.inputTemp = temp
      outputTemp.text = String(tempConverter.convert(temp: temp))
    }
    else {
      tempConverter.inputTemp = -500
    }
  }
  
  private func updateLabels() {
    outputTempLabel.text = tempConverter.newUnits
    inputTempLabel.text = tempConverter.tempUnits
  }
  
  
  
  
//  @IBAction func startButtonTapped(sender: UIButton) {
//    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
//
//    stopwatch.start()
//  }
//
//  @objc func updateElapsedTimeLabel(timer: Timer) {
//    if stopwatch.isRunning {
//      elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
//    } else {
//      timer.invalidate()
//    }
//  }
//
//  @IBAction func stopButtonTapped(sender: UIButton) {
//    stopwatch.stop()
//  }
}

