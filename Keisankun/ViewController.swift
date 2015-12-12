//
//  ViewController.swift
//  Keisankun
//
//  Created by 安部裕介 on 12/12/15.
//  Copyright © 2015 YusukeAbe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Result of calculation
    var resultLabel = UILabel()

    // number of button
    let xButtonCount = 4
    let yButtonCount = 4
    // width of display
    let screenWidth:Double = Double(UIScreen.mainScreen().bounds.size.width)
    // height of display
    let screenHeight:Double = Double(UIScreen.mainScreen().bounds.size.height)
    // margin between button
    let buttonMargin = 10.0
    //
    var resultArea = 0.0
    
    override func viewDidLoad() {
    
        switch screenHeight {
        case 480:
            resultArea = 200.0
        case 568:
            resultArea = 250.0
        case 667:
            resultArea = 300.0
        case 736:
            resultArea = 350.0
        default:
            resultArea = 0.0
        }
        
        // framesetting of resultLabel
        resultLabel.frame = CGRect(x: 10, y: 30, width: screenWidth-20, height: resultArea - 30)
        // change the background color of the label
        resultLabel.backgroundColor = UIColor.grayColor()
        // font and character size
        resultLabel.font = UIFont(name: "Arial", size: 50)
        // set alighment of resultLabel
        resultLabel.textAlignment = NSTextAlignment.Right
        // number of display lines
        resultLabel.numberOfLines = 4
        // initial number of label
        resultLabel.text = "0"
        // add resultLabel to ViewController.view is a property to display
        self.view.addSubview(resultLabel)
        
        for var y = 0; y < yButtonCount; y++ {
            for var x = 0; x < xButtonCount; x++ {
                var button = UIButton()
                // button width
                var buttonWidth = (screenWidth - (buttonMargin * (Double(xButtonCount) + 1 ))) / Double(xButtonCount)
                // button height
                var buttonHeight = (screenHeight - resultArea - ((buttonMargin * Double(yButtonCount)+1))) / Double(yButtonCount)
                // x coordinate
                var buttonPositionX = (screenWidth - buttonMargin) / Double(xButtonCount) * Double(x) + buttonMargin
                // y coordinate
                var buttonPositionY = (screenHeight - resultArea - buttonMargin) / Double(yButtonCount) * Double(y) + buttonMargin + resultArea
                // button position
                button.frame = CGRect(x:buttonPositionX,y: buttonPositionY, width: buttonWidth, height: buttonHeight)
                // button color
                button.backgroundColor = UIColor.orangeColor()
                self.view.addSubview(button)
            }
        }
    }
}