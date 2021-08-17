//
//  BackButton.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/17.
//

import UIKit

class BackButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        configUI()
        setupLayout()
    }
    
    init(_ vc: UIViewController) {
        super.init(frame: .zero)
        configUI()
        setupLayout()
        setupAction(vc: vc)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configUI() {
        setImage(UIImage(named: "backButton"), for: .normal)
    }
    
    private func setupLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: 34),
            self.heightAnchor.constraint(equalToConstant: 34)
        ])
    }
    
    private func setupAction(vc: UIViewController) {
        let backAction = UIAction { _ in
            vc.navigationController?.popViewController(animated: true)
        }
        self.addAction(backAction, for: .touchUpInside)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
