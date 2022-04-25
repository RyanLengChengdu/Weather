//
//  LocationManager.swift
//  Weather
//
//  Created by 冷锐鹏 on 2022/4/21.
//

import Foundation
import Combine
import CoreLocation
import SwiftUI

class LocationManager:NSObject,ObservableObject,CLLocationManagerDelegate{
    let locationManager  = CLLocationManager()
    let geocoder = CLGeocoder()
    @Published var CityName = ""
    @Published var street = ""
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        geocoder.reverseGeocodeLocation(location) { placeMarks, error in
            self.CityName = placeMarks?.first?.locality ?? "成都市"
            self.street = placeMarks?.first?.thoroughfare ?? " "
        }

    }
    func refreshLocation(){
        locationManager.startUpdatingLocation()
    }
    
}
