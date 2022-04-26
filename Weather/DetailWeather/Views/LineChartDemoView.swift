//
//  LineChartDemoView.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/22.
//

import SwiftUI
import SwiftUICharts
struct LineChartDemoView: View {
    
    let data : LineChartData = weekOfData()
    
    var body: some View {
        VStack {
            LineChart(chartData: data)
                .pointMarkers(chartData: data)
                
                //.xAxisGrid(chartData: data)
                //.yAxisGrid(chartData: data)
                //.xAxisLabels(chartData: data)
                //.yAxisLabels(chartData: data)
                //.infoBox(chartData: data)
                //.headerBox(chartData: data)
                //.legends(chartData: data, columns: [GridItem(.flexible()), GridItem(.flexible())])
                //.id(data.id)
                //.frame(minWidth: 150, maxWidth: 900, minHeight: 150, idealHeight: 250, maxHeight: 400, alignment: .center)
        }
        
    }
    
    static func weekOfData() -> LineChartData {
        let data = LineDataSet(dataPoints: [
            LineChartDataPoint(value: 15, xAxisLabel: "M", description: "Monday"),
            LineChartDataPoint(value: 20, xAxisLabel: "T", description: "Tuesday"),
            LineChartDataPoint(value: 28,  xAxisLabel: "W", description: "Wednesday"),
            LineChartDataPoint(value: 28, xAxisLabel: "T", description: "Thursday"),
            LineChartDataPoint(value: 26, xAxisLabel: "F", description: "Friday"),
            LineChartDataPoint(value: 25, xAxisLabel: "S", description: "Saturday"),
            LineChartDataPoint(value: 22,  xAxisLabel: "S", description: "Sunday"),
            LineChartDataPoint(value: 15, xAxisLabel: "M", description: "Monday"),
            LineChartDataPoint(value: 20, xAxisLabel: "T", description: "Tuesday"),
            LineChartDataPoint(value: 28,  xAxisLabel: "W", description: "Wednesday"),
            LineChartDataPoint(value: 28, xAxisLabel: "T", description: "Thursday"),
            LineChartDataPoint(value: 26, xAxisLabel: "F", description: "Friday"),
            LineChartDataPoint(value: 25, xAxisLabel: "S", description: "Saturday"),
            LineChartDataPoint(value: 22,  xAxisLabel: "S", description: "Sunday"),
            LineChartDataPoint(value: 15, xAxisLabel: "M", description: "Monday"),
            LineChartDataPoint(value: 15, xAxisLabel: "M", description: "Monday")
        ],
        pointStyle: PointStyle(),
        style: LineStyle(lineColour: ColourStyle(colour: .yellow), lineType: .curvedLine))
        
        
        
        
        let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
                                        infoBoxBorderColour : Color.primary,
                                        
                                        
                                        markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                        
                                        //xAxisGridStyle      : gridStyle,
                                        xAxisLabelPosition  : .bottom,
                                        xAxisLabelColour    : Color.primary,
                                        xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                        
                                        //yAxisGridStyle      : gridStyle,
                                        yAxisLabelPosition  : .leading,
                                        yAxisLabelColour    : Color.primary,
                                        //yAxisNumberOfLabels :0,
                                        
                                        baseline            : .minimumWithMaximum(of: 15),
                                        topLine             : .maximum(of: 30)
                                        )
        
        return LineChartData(dataSets       : data,
                             //metadata       : metadata,
                             chartStyle     : chartStyle)
        
    }
}

struct LineChartDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartDemoView()
    }
}
