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
        lineGraphView.setGraphPoints(graphPoints: [5,6,8,8,7,9,9,8,9,10,9,10,11])
        lineGraphView.setLineColor(/*lineFillColor: UIColor.purple, */lineStrokeColor: UIColor.yellow)
        lineGraphView.setAnimation(duration: 3.0)
        lineGraphView.setTrendLine(trendLine: true, lineWidth: 1.5, trendLineColor: .red)
        lineGraphView.hasBeneathGraphGradient(hasBeneathGraphGradient: true)
        //lineGraphView.setYAxis(yAxisStartPoint: 5, yAxisEndPoint: 11) //Not working yet
        lineGraphView.setNeedsDisplay()
    }
}

