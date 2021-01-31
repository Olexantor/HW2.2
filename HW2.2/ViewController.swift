//
//  ViewController.swift
//  HW2.2
//
//  Created by Александр on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var colorOfSliderOne: UILabel!
    @IBOutlet weak var colorOfSliderTwo: UILabel!
    @IBOutlet weak var colorOfSliderThree: UILabel!
    
    @IBOutlet weak var valueOfSliderOne: UILabel!
    @IBOutlet weak var valueOfSliderTwo: UILabel!
    @IBOutlet weak var valueOfSliderThree: UILabel!
    
    @IBOutlet weak var sliderOne: UISlider!
    @IBOutlet weak var sliderTwo: UISlider!
    @IBOutlet weak var sliderThree: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: View
        coloredView.layer.cornerRadius = 20
        
        // MARK: Static labels
        colorOfSliderOne.text = "Red:"
        colorOfSliderOne.textColor = .white
        
        colorOfSliderTwo.text = "Green:"
        colorOfSliderTwo.textColor = .white
        
        colorOfSliderThree.text = "Blue:"
        colorOfSliderThree.textColor = .white
        
        // MARK: Dynamic labels
        valueOfSliderOne.textAlignment = .right
        valueOfSliderOne.textColor = .white
        
        valueOfSliderTwo.textAlignment = .right
        valueOfSliderTwo.textColor = .white
        
        valueOfSliderThree.textAlignment = .right
        valueOfSliderThree.textColor = .white
        
        // MARK: Sliders
        sliderOne.value = 0
        sliderOne.minimumValue = 0
        sliderOne.maximumValue = 1
        sliderOne.minimumTrackTintColor = .red
        valueOfSliderOne.text = String(format: "%.2f", sliderOne.value)
        
        sliderTwo.value = 0
        sliderTwo.minimumValue = 0
        sliderTwo.maximumValue = 1
        sliderTwo.minimumTrackTintColor = .green
        valueOfSliderTwo.text = String(format: "%.2f", sliderTwo.value)
        
        sliderThree.value = 0
        sliderThree.minimumValue = 0
        sliderThree.maximumValue = 1
        sliderThree.minimumTrackTintColor = .blue
        valueOfSliderThree.text = String(format: "%.2f", sliderThree.value)
    }
    
    // MARK: Slider's methods
    @IBAction func sliderOneMoving() {
        valueOfSliderOne.text = String(format: "%.2f", sliderOne.value)
        coloredView.backgroundColor = UIColor(
            displayP3Red: CGFloat(sliderOne.value),
            green: CGFloat(sliderTwo.value),
            blue: CGFloat(sliderThree.value),
            alpha: 1
        )
    }
    
    @IBAction func sliderTwoMoving() {
        valueOfSliderTwo.text = String(format: "%.2f", sliderTwo.value)
        coloredView.backgroundColor = UIColor(
            displayP3Red: CGFloat(sliderOne.value),
            green: CGFloat(sliderTwo.value),
            blue: CGFloat(sliderThree.value),
            alpha: 1
        )
    }
    
    @IBAction func sliderThreeMoving() {
        valueOfSliderThree.text = String(format: "%.2f", sliderThree.value)
        coloredView.backgroundColor = UIColor(
            displayP3Red: CGFloat(sliderOne.value),
            green: CGFloat(sliderTwo.value),
            blue: CGFloat(sliderThree.value),
            alpha: 1
        )
    }
}

