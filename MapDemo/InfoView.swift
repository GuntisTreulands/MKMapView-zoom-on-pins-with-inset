//
//  InfoView.swift
//  MapDemo
//
//  Created by Guntis on 01/09/2019.
//  Copyright © 2019 . All rights reserved.
//

import UIKit


class InfoView: UIView {

	@IBOutlet weak var baseView: UIView!
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
		Bundle.main.loadNibNamed("InfoView", owner: self, options: nil)
		addSubview(baseView)
		baseView.frame = self.bounds


		self.translatesAutoresizingMaskIntoConstraints = false
		baseView.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.translatesAutoresizingMaskIntoConstraints = false

		baseView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		baseView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		baseView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		baseView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

		titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
		titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
		titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true

		self.layer.cornerRadius = 5
		self.clipsToBounds = true
		self.layer.borderColor = UIColor.black.cgColor
		self.layer.borderWidth = 1

		titleLabel.text = "Drag me! \n\n\n\n\nThis is just an info view.\n\n\n\n\n You can pan it vertically."
	}
}
