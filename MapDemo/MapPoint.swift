//
//  MapPoint.swift
//  MapDemo
//
//  Created by Guntis on 04/10/2019.
//

import MapKit
import UIKit

class MapPoint: NSObject, MKAnnotation {
	var title: String?
    var imageName: String
    var coordinate: CLLocationCoordinate2D

    init(title: String, coordinate: CLLocationCoordinate2D, imageName: String) {
        self.title = title
        self.coordinate = coordinate
        self.imageName = imageName
    }
}
