//
//  ViewController.swift
//  GMTApp
//
//  Created by Sarina Bibæk on 30/08/2019.
//  Copyright © 2019 Sarina. All rights reserved.
//

import UIKit
import GMTPod

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lineGraphView: LineGraphTest!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        lineGraphView.setCornerRadius(width: 8.0, height: 8.0)
        lineGraphView.setBorders(topBorder: 50, bottomBorder: 50, leftMargin: 30, rightMargin: 10)
        lineGraphView.setBackgroundGradient(firstColor: UIColor(red: 0, green: 0.8, blue: 0.2, alpha: 1.0), lastColor: .white)
        lineGraphView.setGraphPoints(graphPoints: [5,6,5,6,5,6,5,6,5,6,4])
        lineGraphView.setLineColor(lineStrokeColor: UIColor.yellow)
        lineGraphView.setGraphLineAnimation(duration: 3.0)
        //lineGraphView.setTrendLine(trendLine: true, lineWidth: 1.5, trendLineColor: .red, animate: true, animationDuration: 2.0)
        lineGraphView.hasBeneathGraphGradient(hasBeneathGraphGradient: true)
        lineGraphView.setAxes(xAxisStrings: ["M","T"], yAxisStrings: ["000","001","002","003","004","005","006"], fontSize: nil, textColor: nil, marginToXAxis: 5, marginToYAxis: 5)
        lineGraphView.addGraphTitle(title: "Test Graph", titleFontSize: 24, titleColor: UIColor.purple)
        lineGraphView.setTitlePlacement(left: true, center: false, right: false, horizontalOffset: 0.0, verticalOffset: 0.0)
        lineGraphView.addCirclesToGraphPoints(circleDiameter: 5.0, circleColor: .blue)
       
        lineGraphView.setNeedsDisplay()
    }
}

