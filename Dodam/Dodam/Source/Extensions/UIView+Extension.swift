//
//  UIView+Extension.swift
//  Dodam
//
//  Created by μμλΉ on 2021/08/17.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
}
