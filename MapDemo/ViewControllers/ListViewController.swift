//
//  ListViewController.swift
//  MapDemo
//
//  Created by Guntis on 04/10/2019.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet var tableView: UITableView!

	var data: [CombinedPoints]!

	override func viewDidLoad() {
		super.viewDidLoad()

		data = CombinedPoints.getAllPoints()
		tableView.dataSource = self
		tableView.delegate = self
	}

	// MARK: Table view

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

		let aData = self.data[indexPath.row]
//		cell.selectionStyle = .none
		cell.textLabel?.text = aData.title
		cell.imageView?.image = UIImage.init(named: aData.imageName)

		return cell
	}

	func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
		return 0
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

		guard let vc = storyboard?.instantiateViewController(withIdentifier: "mapViewController") as? MapViewController else {
			return
		}
		vc.mapDataPoints = data[indexPath.row].mapPoints
		self.navigationController?.pushViewController(vc, animated: true)
	}
}

