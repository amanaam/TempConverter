//
//  ViewController.swift
//  TempConverterApp
//
//  Created by Abdul Manaam on 9/14/21.
//

import UIKit

class ViewController: UIViewController {
  let tempConverter = TempConverter()
  @IBOutlet weak var inputTempLabel: UILabel!
  @IBOutlet weak var outputTempLabel: UILabel!
  @IBOutlet weak var inputTemp: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    inputTemp.text = "--"
  }
  
  func updateLabels(<#parameters#>) -> <#return type#> {
    <#function body#>
  }
  
  func updateDisplay(<#parameters#>) -> <#return type#> {
    <#function body#>
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

