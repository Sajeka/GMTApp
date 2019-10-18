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
//    @IBOutlet weak var lineGraphView: BarChartView!
//        @IBOutlet weak var lineGraphView: HistogramView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /*
         Line Graph code
         */
                let formatter = NumberFormatter()
                formatter.numberStyle = .currency
        
                let graph1Animation = LineGraphTest.Animation(animate: LineGraphTest.Animate.animateOnlyTrendLine, animationDuration: 3.0)
        
                let graph1Trendline = TrendLine(trendLineColor: .green, trendLineWidth: 1.0)
                let graph2Trendline = TrendLine(trendLineColor: .orange, trendLineWidth: 2.0)
        
                let graph1: Graph = Graph(graphPoints: [25.0,12.0,75.0,49.0,73.0],
                                          graphColor: .blue,
                                          lineGraphCategory: "Shoes",
                                          lineWidth: 1.0,
                                          trendLine: graph1Trendline,
                                          circleRadius: 3.0)
                let graph2: Graph = Graph(graphPoints: [32.0,18.0,26.0,20.0,15.0],
                                          graphColor: .purple,
                                          lineGraphCategory: "Bags",
                                          lineWidth: 2.0,
                                          trendLine: graph2Trendline,
                                          circleRadius: 3.0)
        
                lineGraphView.createLineGraph(lineGraphs: [graph1, graph2],
                                              xAxisStrings: ["Man", "Tir", "Ons", "Tor", "Fre"],
                                              yAxis: YAxis(yAxisMinValue: 0,
                                                                         yAxisMaxValue: 100,
                                                                         yAxisNumberOfElements: 6,
                                                                         yAxisFormatter: AxisFormatter.FormatAxisBy.one), animation: graph1Animation)
//        lineGraphView.setXValuesRotationInDegrees(degree: 270)
                lineGraphView.setNeedsDisplay()
        
        /*
         Bar graph code
         */
//        let barChart1: BarChartObj = BarChartObj(barChartPoints: [6500.5,7200.0,7500.0,5490.0,6730.0], barColor: .red, barChartCategory: "Shoes", lineWidth: 1.0)
//        let barChart2: BarChartObj = BarChartObj(barChartPoints: [2000.8,1800.0,5550.0,6550.0,7000.0], barColor: .blue, barChartCategory: "Bags", lineWidth: 1.0)
//        let barChart3: BarChartObj = BarChartObj(barChartPoints: [7020.3,5900.0,4620.0,5500.0,4700.0], barColor: .green, barChartCategory: "Perfumes", lineWidth: 1.0)
//
//        let barChartArray = [barChart1, barChart2, barChart3]
//        let yAxis = YAxis(yAxisMinValue: 0, yAxisMaxValue: 8000, yAxisNumberOfElements: 5, yAxisFormatter: AxisFormatter.FormatAxisBy.thousand)
//
//        let animation = BarChartView.Animation(barAnimationDuration: BarChartView.BarAnimationDuration.linearWithRandomizedStart, durationParameter: 3)
//
//        lineGraphView.createBarChart(barCharts: barChartArray, xAxisStrings: ["Man","Tir","Ons","Tor", "Fre"], yAxis: yAxis, animation: animation)
//
//        lineGraphView.setXValuesRotationInDegrees(degree:  Double(270))
//        lineGraphView.barChartTitle = "Ugentligt salg"
//
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//
//        lineGraphView.infoBoxNumberFormatter = formatter
//       let category = Category(categoryOrientation: CategoryOrientation.vertical, paddingBetweenCategories: 5.0, categoryColorBoxSize: CategoryBoxSize.medium)
//
//        lineGraphView.category = category
//
//        lineGraphView.setNeedsDisplay()
    
        /*
         Histogram code
         */
//                let animation = HistogramView.Animation(barAnimationDuration: HistogramView.BarAnimationDuration.linearWithRandomizedStart, durationParameter: 3)
//                let histogramDataPoints = [100.0, 200.0, 150.0, 440.0, 340.0, 230.0, 670.0, 650.0, 670.0, 120.0, 320.0, 430.0, 770.0, 80.0, 160.0, 470.0, 420.0, 720.0]
//                let yAxis = YAxis(yAxisMinValue: 0,
//                                  yAxisMaxValue: 10,
//                                  yAxisNumberOfElements: 6,
//                                  yAxisFormatter: AxisFormatter.FormatAxisBy.one)
//
//                let histogram = HistogramView.Histogram(histogramDataPoints: histogramDataPoints,
//                                                        barColor: .blue,
//                                                        xAxis: HistogramView.XAxis(xAxisMinValue: 0,
//                                                                                   xAxisMaxValue: 800,
//                                                                                   xAxisNumberOfBars: 8,
//                                                                                   xAxisFormatter: AxisFormatter.FormatAxisBy.hundred),
//                                                        yAxis: yAxis)
//                let numberFormatter = NumberFormatter()
//                numberFormatter.numberStyle = .currency
//
//
//                lineGraphView.createHistogram(histogram: histogram, animation: animation)
//                lineGraphView.histogramTitle = "Test"
//                lineGraphView.setXValuesRotationInDegrees(degree: 270)
//                lineGraphView.infoBoxNumberFormatter = numberFormatter
//                lineGraphView.setNeedsDisplay()
    }
}

