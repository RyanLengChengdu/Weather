//
//  TwentyFourHourWeather.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/22.
//

import SwiftUI
import SwiftUICharts
struct TwentyFourHourWeather: View {
    
    let data : LineChartData = weekOfData()
    
    var body: some View {
        VStack {
            FilledLineChart(chartData: data)
                //.xAxisGrid(chartData: data)
                //.yAxisGrid(chartData: data)
                .xAxisLabels(chartData: data)
                .yAxisLabels(chartData: data)
                .headerBox(chartData: data)
                .frame(alignment: .center)
        }
    }
    
    static func weekOfData() -> LineChartData {
        let data = LineDataSet(dataPoints: [
            LineChartDataPoint(value: 15, xAxisLabel: "00:00", description: "Monday"),
            LineChartDataPoint(value: 17, xAxisLabel: "04:00", description: "Tuesday"),
            LineChartDataPoint(value: 19,  xAxisLabel: "08:00", description: "Wednesday"),
            LineChartDataPoint(value: 24, xAxisLabel: "12:00", description: "Thursday"),
            LineChartDataPoint(value: 27, xAxisLabel: "16:00", description: "Friday"),
            LineChartDataPoint(value: 27, xAxisLabel: "20:00", description: "Saturday"),
            LineChartDataPoint(value: 25,  xAxisLabel: "24:00", description: "Sunday")
        ],
        legendTitle: "Steps",
        pointStyle: PointStyle(),
                               style: LineStyle(lineColour: ColourStyle(colour: .blue.opacity(0.2)), lineType: .curvedLine))
        
        
        let gridStyle  = GridStyle(numberOfLines: 7,
                                   lineColour   : Color(.lightGray).opacity(0.5),
                                   lineWidth    : 1,
                                   dash         : [8],
                                   dashPhase    : 0)
        
        let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
                                        infoBoxBorderColour : Color.primary,
                                        infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
                                        
                                        markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
                                        
                                        xAxisGridStyle      : gridStyle,
                                        xAxisLabelPosition  : .bottom,
                                        xAxisLabelColour    : Color.primary,
                                        xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
                                        
                                        yAxisGridStyle      : gridStyle,
                                        yAxisLabelPosition  : .leading,
                                        yAxisLabelColour    : Color.primary,
                                        yAxisNumberOfLabels : 3,
                                        
                                        baseline            : .minimumWithMaximum(of: 12),
                                        topLine             : .maximum(of: 30))
        
        return LineChartData(dataSets       : data,
                
                             chartStyle     : chartStyle)
        
    }
}

struct TwentyFourHourWeather_Previews: PreviewProvider {
    static var previews: some View {
        TwentyFourHourWeather()
    }
}
