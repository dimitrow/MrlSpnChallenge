//
//  UIView+Extension.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

extension UIView {
    
    func pin(to superView: UIView) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
    
    func makeCornerRounded(with radius: CGFloat) {
        
        self.layer.cornerRadius = radius
    }
}
