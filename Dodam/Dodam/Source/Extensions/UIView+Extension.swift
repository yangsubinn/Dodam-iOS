//
//  UIView+Extension.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/17.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
}
