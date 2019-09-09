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
        let graph1: Graph = Graph(graphPoints: [5.0,6.0,5.0,6.0,1.0,6.0,5.0,6.0,5.0,6.0,4.0], graphColor: nil, lineWidth: 5.0, trendLine: nil, animate: true, animationDuration: 5.0)
        let graph2: Graph = Graph(graphPoints: [3.0,2.0,3.0,2.0,3.0,2.0,3.0,2.0,3.0,2.0,3.0], graphColor: .cyan, lineWidth: 5.0, trendLine: TrendLine(trendLineColor: .red, trendLineWidth: 3.0, animate: false, animationDuration: nil), animate: true, animationDuration: nil)
        
        lineGraphView.setCornerRadius(width: 8.0, height: 8.0)
        lineGraphView.setBorders(topBorder: 50, bottomBorder: 50, leftMargin: 30, rightMargin: 10)
        lineGraphView.setBackgroundGradient(firstColor: UIColor(red: 0, green: 0.8, blue: 0.2, alpha: 1.0), lastColor: .white)
        lineGraphView.setGraphPoints(graph: graph1)
        lineGraphView.setGraphPoints(graph: graph2)
        lineGraphView.hasBeneathGraphGradient(hasBeneathGraphGradient: true)
        lineGraphView.setAxes(xAxisStrings: ["M","T","S","T","F","W","B"], yAxisStrings: ["000","001","002","003","004","005","006"], fontSize: nil, textColor: nil, marginToXAxis: 5, marginToYAxis: 5)
        lineGraphView.addGraphTitle(title: "Test Graph", titleFontSize: 24, titleColor: UIColor.purple)
        lineGraphView.setTitlePlacement(left: true, center: false, right: false, horizontalOffset: 0.0, verticalOffset: 0.0)

        lineGraphView.setNeedsDisplay()
    }
}

