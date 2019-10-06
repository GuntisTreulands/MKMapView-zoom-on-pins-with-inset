//
//  MapPinAccessoryView.swift
//  MapDemo
//
//  Created by Guntis on 01/09/2019.
//  Copyright © 2019 . All rights reserved.
//

import UIKit


class MapPinAccessoryView: UIView {

	@IBOutlet weak var baseView: UIView!
	@IBOutlet var backgroundImageView: UIImageView!
	@IBOutlet var backgroundBubbleArrowImageView: UIImageView!
	@IBOutlet var icon: UIImageView!
	@IBOutlet var titleLabel: UILabel!
	
	// MARK: View lifecycle

	override init(frame: CGRect) {
   	super.init(frame: frame)
		setup()
  	}

  	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
    	setup()
	}

	func setup() {
		Bundle.main.loadNibNamed("MapPinAccessoryView", owner: self, options: nil)
		addSubview(baseView)
		baseView.frame = self.bounds


		self.translatesAutoresizingMaskIntoConstraints = false
		baseView.translatesAutoresizingMaskIntoConstraints = false
		backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
		backgroundBubbleArrowImageView.translatesAutoresizingMaskIntoConstraints = false
		icon.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.translatesAutoresizingMaskIntoConstraints = false

		baseView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		baseView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		baseView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		baseView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

		backgroundImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		backgroundImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		backgroundImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3.5).isActive = true

		backgroundBubbleArrowImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		backgroundBubbleArrowImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true

		backgroundBubbleArrowImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 3).isActive = true

		icon.leftAnchor.constraint(equalTo: leftAnchor, constant: 7).isActive = true
		icon.topAnchor.constraint(equalTo: topAnchor, constant: 7).isActive = true
		icon.widthAnchor.constraint(equalToConstant: 28).isActive = true
		icon.heightAnchor.constraint(equalToConstant: 28).isActive = true

		icon.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true

		titleLabel.leftAnchor.constraint(equalTo: icon.rightAnchor, constant: 5).isActive = true
		titleLabel.topAnchor.constraint(equalTo: icon.topAnchor).isActive = true
		titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -7).isActive = true
		titleLabel.bottomAnchor.constraint(equalTo: icon.bottomAnchor).isActive = true
	}
}
