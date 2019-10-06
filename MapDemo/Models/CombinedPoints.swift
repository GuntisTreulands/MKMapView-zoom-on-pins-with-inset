//
//  CombinedPoints.swift
//  MapDemo
//
//  Created by Guntis on 04/10/2019.
//

import UIKit
import MapKit

struct CombinedPoints {
	var title: String
	var imageName: String
	var mapPoints: [MapPoint]

	static func getAllPoints() -> [CombinedPoints] {
		let mapPoint1 = MapPoint.init(title: "Forest", coordinate: CLLocationCoordinate2D(latitude: 56.9653734, longitude: 24.106606), imageName: "icon_1")
		let mapPoint2 = MapPoint.init(title: "River side", coordinate: CLLocationCoordinate2D(latitude: 56.9653734, longitude: 24.1100178), imageName: "icon_2")
		let mapPoint3 = MapPoint.init(title: "Trees", coordinate: CLLocationCoordinate2D(latitude: 56.9844493, longitude: 24.1086231), imageName: "icon_3")
		let mapPoint4 = MapPoint.init(title: "Rocky", coordinate: CLLocationCoordinate2D(latitude: 56.9618052, longitude: 24.2020129), imageName: "icon_4")
		let mapPoint5 = MapPoint.init(title: "Dust", coordinate: CLLocationCoordinate2D(latitude: 56.9163174, longitude: 24.1106514), imageName: "icon_5")
		let mapPoint6 = MapPoint.init(title: "Day Time", coordinate: CLLocationCoordinate2D(latitude: 56.8435092, longitude: 24.079875), imageName: "icon_6")
		let mapPoint7 = MapPoint.init(title: "Freestyle", coordinate: CLLocationCoordinate2D(latitude: 56.9569656, longitude: 24.054752), imageName: "icon_7")
		let mapPoint8 = MapPoint.init(title: "Sunset", coordinate: CLLocationCoordinate2D(latitude: 56.9959748, longitude: 24.091165), imageName: "icon_8")
		let mapPoint9 = MapPoint.init(title: "Rose", coordinate: CLLocationCoordinate2D(latitude: 56.9745484, longitude: 24.1860404), imageName: "icon_9")
		let mapPoint10 = MapPoint.init(title: "Sleeping", coordinate: CLLocationCoordinate2D(latitude: 56.9394683, longitude: 24.2155057), imageName: "icon_10")

		return [
			CombinedPoints.init(title: "Alone", imageName: "icon_10", mapPoints: [mapPoint1]),
			CombinedPoints.init(title: "Big creak", imageName: "icon_1", mapPoints: [mapPoint1, mapPoint2]),
			CombinedPoints.init(title: "Wide area", imageName: "icon_2", mapPoints: [mapPoint3, mapPoint4, mapPoint5, mapPoint6, mapPoint7, mapPoint10]),
			CombinedPoints.init(title: "Subtle", imageName: "icon_3", mapPoints: [mapPoint7, mapPoint10, mapPoint9, mapPoint8])
		]
	}
}
