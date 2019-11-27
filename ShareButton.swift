//
//  ShareButton.swift
//  Share Button
//
//  Created by Matthew Rempel
//

import Foundation
import UIKit

class ShareButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
		self.fadedDesign()
		self.titleLabel?.text = "Share"
		
		if #available(iOS 13.0, *) {
			self.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
		}
		
        if let imageView = imageView {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: -5, bottom: 5, right: 5)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: imageView.frame.width - 10, bottom: 0, right: 0)
        }
    }
}

extension UIButton {
	func fadedDesign(with textColor: UIColor? = UIColor.label) {
		let fadedColor = UIColor(red:0.96, green:0.96, blue:0.99, alpha:1.0)
		
		if #available(iOS 13.0, *) {
			self.backgroundColor = UIColor.secondarySystemBackground
		} else {
			self.backgroundColor = fadedColor
		}
		
		if let imageView = self.imageView {
			imageView.image = imageView.image?.withRenderingMode(.alwaysTemplate)
			imageView.tintColor = textColor
		}
		
		self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = 8.0
    }
}
