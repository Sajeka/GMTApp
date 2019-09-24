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
    
    
//    @IBOutlet weak var lineGraphView: LineGraphTest!
    @IBOutlet weak var lineGraphView: BarChart!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       /*
         Line Graph code
         let graph1Animation = LineGraphTest.Animation(animate: LineGraphTest.Animate.animateOnlyTrendLine, animationDuration: 3.0)
         let graph1Trendline = TrendLine(trendLineColor: .green, trendLineWidth: 1.0/*, animation: graph1Animation*/)
         let graph1: Graph = Graph(graphPoints: [25.0,12.0,75.0,49.0,73.0], graphColor: .blue, graphTitle: "Shoes", lineWidth: 1.0, trendLine: graph1Trendline, circleRadius: 3.0/*, animation: graph1Animation*/)
         let graph2Trendline = TrendLine(trendLineColor: .orange, trendLineWidth: 2.0/*, animation: graph1Animation*/)
         let graph2: Graph = Graph(graphPoints: [32.0,18.0,26.0,20.0,15.0], graphColor: .purple, graphTitle: "Bags", lineWidth: 2.0, trendLine: graph2Trendline, circleRadius: 3.0/*, animation: graph1Animation*/)
         
         
         lineGraphView.setCornerRadius(width: 8.0, height: 8.0)
         lineGraphView.setBorders(topBorder: 50, bottomBorder: 50, leftBorder: 35, rightBorder: 35)
         //        lineGraphView.setBackgroundGradient(firstColor: UIColor(red: 0, green: 0.8, blue: 0.2, alpha: 1.0), lastColor: .white)
         lineGraphView.setGraphPoints(graph: graph1)
         lineGraphView.setGraphPoints(graph: graph2)
         
         lineGraphView.setAxes(xAxis: ["Man","Tir","Ons","Tor","Fre"], xAxisFont: nil, yAxisMinValue: 0, yAxisMaxValue: 100, yAxisNumberOfElements: 5, fontSize: 11, textColor: nil, marginToXAxis: 10, marginToYAxis: 5, yAxisFont: nil)
         lineGraphView.addGraphTitle(title: "Ugentllig salg", titleFont: nil, titleColor: UIColor.black)
         lineGraphView.setTitlePlacement(left: true, center: false, right: false, horizontalOffset: 0.0, verticalOffset: 0.0)
         //        lineGraphView.setXValuesRotationInDegrees(degree:  Double(285))
         lineGraphView.setHelperLinesVisible(shouldHelperLinesBeVisible: true)
         let test = LineGraphTest.CustomizedTextBox(cornerRadius: nil,
         font: nil,
         textSize: nil,
         textColor: nil,
         textBoxColor: .white,
         textBoxBorderColor: .black,
         textBoxBorderLineWidth: nil,
         textBoxHeightPadding: 6,
         textBoxWidthPadding: 6,
         triangleHeight: nil,
         triangleWidth: nil,
         triangleTipPadding: nil)
         lineGraphView.customizeTextBoxOnPointClick(customizedTextBoxStruct: test)
         lineGraphView.addTextToEndOfTextBox(endText: " kr")
         lineGraphView.addAnimation(animation: graph1Animation)
         lineGraphView.setNeedsDisplay()
         */
        /*
         Bar graph code
         */
        let barChart1: BarChartObj = BarChartObj(barChartPoints: [25.0,12.0,75.0,49.0,73.0], barColor: .red, barChartTitle: "Ugentligt salg", lineWidth: 1.0)

        lineGraphView.setCornerRadius(width: 5.0, height: 5.0)
        lineGraphView.setBorders(topBorder: 50, bottomBorder: 50, leftBorder: 35, rightBorder: 35)

        lineGraphView.setBarChartPoints(barChart: barChart1)

        lineGraphView.setAxes(xAxis: ["Man","Tir","Ons","Tor","Fre"], xAxisFont: nil, yAxisMinValue: 0, yAxisMaxValue: 100, yAxisNumberOfElements: 5, fontSize: 11, textColor: nil, marginToXAxis: 10, marginToYAxis: 5, yAxisFont: nil)
        lineGraphView.setXValuesRotationInDegrees(degree:  Double(270))
        lineGraphView.addBarChartTitle(title: "Ugentllig salg", titleFont: nil, titleColor: UIColor.black)
        lineGraphView.setTitlePlacement(titlePlacement: BarChart.TitlePlacement.left, horizontalOffset: 0.0, verticalOffset: 0.0)
        lineGraphView.setNeedsDisplay()

    }
}

