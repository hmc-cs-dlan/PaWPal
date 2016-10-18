//
//  SurveyPage2ViewController.swift
//  PaWPal
//
//  Created by Tiffany Fong on 9/27/16.
//  Copyright © 2016 HMC CS121 Group 5. All rights reserved.
//

import UIKit

class SurveyPage2ViewController: UIViewController {

    func displayQuestions(){
        
        // create the stack view
        let stackView = UIStackView()
        stackView.axis = .Vertical
        stackView.distribution = .FillEqually
        stackView.alignment = .Fill
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // add questions to the stack view
        if let sliderQ1 = NSBundle.mainBundle().loadNibNamed("SliderQuestion", owner: self, options: nil).first as? SliderQuestion {
            stackView.addArrangedSubview(sliderQ1)
            sliderQ1.promptLabel.text = "Did you enjoy what you were doing?"
        }
        
        if let sliderQ2 = NSBundle.mainBundle().loadNibNamed("SliderQuestion", owner: self, options: nil).first as? SliderQuestion {
            stackView.addArrangedSubview(sliderQ2)
            sliderQ2.promptLabel.text = "How well were you concentrating?"
        }
        
        if let sliderQ3 = NSBundle.mainBundle().loadNibNamed("SliderQuestion", owner: self, options: nil).first as? SliderQuestion {
            stackView.addArrangedSubview(sliderQ3)
            sliderQ3.promptLabel.text = "Were you getting better at something?"
        }
        
        if let sliderQ4 = NSBundle.mainBundle().loadNibNamed("SliderQuestion", owner: self, options: nil).first as? SliderQuestion {
            stackView.addArrangedSubview(sliderQ4)
            sliderQ4.promptLabel.text = "Did you have some choice in picking the activity?"
        }
        
        view.addSubview(stackView)
        
        //autolayout the stack view - pin 30 up 20 left 20 right 100 down
        let viewsDictionary = ["stackView":stackView]
        let stackView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[stackView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let stackView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-30-[stackView]-100-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: viewsDictionary)
        view.addConstraints(stackView_H)
        view.addConstraints(stackView_V)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayQuestions()
    }
}
