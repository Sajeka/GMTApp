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
         */
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//
//        let graph1Animation = LineGraphTest.Animation(animate: LineGraphTest.Animate.animateOnlyTrendLine, animationDuration: 3.0)
//
//        let graph1Trendline = TrendLine(trendLineColor: .green, trendLineWidth: 1.0)
//        let graph2Trendline = TrendLine(trendLineColor: .orange, trendLineWidth: 2.0)
//
//        let graph1: Graph = Graph(graphPoints: [25.0,12.0,75.0,49.0,73.0],
//                                  graphColor: .blue,
//                                  lineGraphCategory: "Shoes",
//                                  lineWidth: 1.0,
//                                  trendLine: graph1Trendline,
//                                  circleRadius: 3.0)
//        let graph2: Graph = Graph(graphPoints: [32.0,18.0,26.0,20.0,15.0],
//                                  graphColor: .purple,
//                                  lineGraphCategory: "Bags",
//                                  lineWidth: 2.0,
//                                  trendLine: graph2Trendline,
//                                  circleRadius: 3.0)
//
//        lineGraphView.setCornerRadius(radius: 10)
//        lineGraphView.createLineGraph(lineGraphs: [graph1, graph2],
//                                      xAxisStrings: ["Man", "Tir", "Ons", "Tor", "Fre"],
//                                      yAxis: LineGraphTest.YAxis(yAxisMinValue: 0,
//                                                                 yAxisMaxValue: 100,
//                                                                 yAxisNumberOfElements: 6,
//                                                                 yAxisFormatter: LineGraphTest.YAxisFormatter.one))
//        lineGraphView.addLineGraphTitle(title: "Ugentllig salg", titleFont: nil, titleColor: UIColor.black, titleSize: 16)
////        lineGraphView.setXValuesRotationInDegrees(degree:  Double(285))
//        lineGraphView.setHelperLines(helperLines: LineGraphTest.HelperLines(helperLinesColor: .gray,
//                                                                            helperLinesLineWidth: 1,
//                                                                            helperLinesDashes: (2, 2)))
//
//        lineGraphView.formatInfoBoxText(numberFormatter: formatter)
//        lineGraphView.addAnimation(animation: graph1Animation)
//        lineGraphView.setNeedsDisplay()
        
        /*
         Bar graph code
         */
                let barChart1: BarChartObj = BarChartObj(barChartPoints: [6500.5,7200.0,7500.0,5490.0,6730.0], barColor: .red, barChartCategory: "Shoes", lineWidth: 1.0)
                let barChart2: BarChartObj = BarChartObj(barChartPoints: [2000.8,1800.0,5550.0,6550.0,7000.0], barColor: .blue, barChartCategory: "Bags", lineWidth: 1.0)
                let barChart3: BarChartObj = BarChartObj(barChartPoints: [7020.3,5900.0,4620.0,5500.0,4700.0], barColor: .green, barChartCategory: "Perfumes", lineWidth: 1.0)
        //        let barChart4: BarChartObj = BarChartObj(barChartPoints: [3080.3,2900.0,7620.0,5010.0,4100.0], barColor: .purple, barChartCategory: "Dresses", lineWidth: 1.0)
                let barChartArray = [barChart1, barChart2, barChart3]
                let yAxis = BarChart.YAxis(yAxisMinValue: 0, yAxisMaxValue: 8000, yAxisNumberOfElements: 5, yAxisFormatter: BarChart.YAxisFormatter.thousand)
                let customizedCategory = BarChart.Category(categoryOrientation: BarChart.CategoryOrientation.vertical, paddingBetweenCategories: 5, categoryColorBoxSize: BarChart.CategoryBoxSize.medium)
                let customizedCategoryText = BarChart.TextAttributes(textColor: .black, textFont: UIFont(name: "Avenir-Light", size: 10), textSize: nil)
        let animation = BarChart.Animation(barAnimationDuration: BarChart.BarAnimationDuration.linearWithRandomizedStart, durationParameter: 3)
//                lineGraphView.setCornerRadius(width: 5.0, height: 5.0)
                lineGraphView.adjustBorders(addToTopBorder: 0, addToRightBorder: 0, addToBottomBorder: 5, addToLeftBorder: 0)

        lineGraphView.createBarChart(barCharts: barChartArray, xAxisStrings: ["Man","Tir","Ons","Tor"], yAxis: yAxis, animation: animation)
                lineGraphView.customizeCategories(customizedCategory: customizedCategory, customizedTextAttributes: customizedCategoryText)



                lineGraphView.setXValuesRotationInDegrees(degree:  Double(270))
        lineGraphView.addBarChartTitle(title: "Ugentllig salg", titleFont: nil, titleColor: UIColor.black, titleSize: 16)

                lineGraphView.setTitlePlacement(titlePlacement: BarChart.TitlePlacement.left, horizontalOffset: 0.0, verticalOffset: 0.0)
                lineGraphView.setHelperLines(helperLines: BarChart.HelperLines(helperLinesColor: .gray, helperLinesLineWidth: 0.5, helperLinesDashes: (2.0, 2.0)))
                let formatter = NumberFormatter()
                formatter.numberStyle = .currency
                lineGraphView.formatInfoBoxText(numberFormatter: formatter)

                lineGraphView.setNeedsDisplay()
        
    }
}

