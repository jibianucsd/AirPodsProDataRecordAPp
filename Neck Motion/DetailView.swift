//
//  DetailView.swift
//  Neck Motion
//
//  Created by Daniel Ziper on 5/19/22.
//

import SwiftUI
import SwiftUICharts

struct DetailView: View {
    let session: Session
    var body: some View {
            VStack {
                HStack{
                    Text(session.date as Date, style: .date)
                        .font(.headline)
                    Spacer()
                }
                HStack {
                    
                    Text(session.type)
                        .font(.title)
                    Spacer()
                }
                
                ScrollView {
                    VStack {
                        LineView(data: session.motion.pitch, title: "Pitch")
                        
//                        PieChartView(data: [0.7, 0.2, 0.1], title: "Proportion of Good Posture")
                    }
                }
            }
            .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        var data = MotionData(
            timestamps: [1, 2, 3, 4, 5, 6],
            pitch: [1,2,5,6,0,10],
            roll: [1,2,20,6,0,10],
            yaw: [1,2,50,6,20,10]
        )
        DetailView(session: Session(motion: data, date: Date(), type: "Surgery"))
    }
}
