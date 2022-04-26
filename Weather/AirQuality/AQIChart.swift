//
//  AQIChart.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/26.
//

import SwiftUI
import SwiftUICharts
struct AQIChart: View {
    let data : LineChartData = weekOfData()
    var body: some View {
        VStack(alignment:.leading){
            Text("空气质量(AQI)")
                .bold()
                .font(.title2)
            ScrollView(.horizontal, showsIndicators: false) {
                LineChart(chartData: data)
                    //.pointMarkers(chartData: data)
                    //点击显示详细数据
                    //.touchOverlay(chartData: data, specifier: "%.0f")
                    .yAxisGrid(chartData: data)
                    .xAxisLabels(chartData: data)
                    .yAxisLabels(chartData: data)
                    .headerBox(chartData: data)
                    .frame(minWidth: 800, maxWidth: 900, alignment: .center)
            }
        }.padding()
    }
    static func weekOfData() -> LineChartData {
        let data = LineDataSet(dataPoints: [
            LineChartDataPoint(value: 123, xAxisLabel: "现在"),
            LineChartDataPoint(value: 87, xAxisLabel: "12:00"),
            LineChartDataPoint(value: 65,  xAxisLabel: "13:00"),
            LineChartDataPoint(value: 111,  xAxisLabel: "14:00"),
            LineChartDataPoint(value: 145,  xAxisLabel: "15:00"),
            LineChartDataPoint(value: 76,  xAxisLabel: "16:00"),
            LineChartDataPoint(value: 85,  xAxisLabel: "17:00"),
            LineChartDataPoint(value: 85,  xAxisLabel: "18:00"),
            LineChartDataPoint(value: 85,  xAxisLabel: "19:00"),
        ],
        legendTitle: "Steps",
        pointStyle: PointStyle(),
        style: LineStyle(lineColour: ColourStyle(colour: .green), lineType: .curvedLine))
        
        
        let gridStyle  = GridStyle(numberOfLines: 3,
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
                                        
                                        baseline            : .minimumWithMaximum(of: 0),
                                        topLine             : .maximum(of: 200)
                                        
                                        //globalAnimation     : .easeOut(duration: 1)
        )
        
        return LineChartData(dataSets       : data,
                
                             chartStyle     : chartStyle)
        
    }
}

struct AQIChart_Previews: PreviewProvider {
    static var previews: some View {
        AQIChart()
    }
}
