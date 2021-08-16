//
//  LightButton.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/17.
//

import UIKit

class LightButton: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        configUI(title: title)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configUI(title: String) {
        backgroundColor = .lightGray
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 18)
        layer.cornerRadius = 6
    }
    
    private func setupLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 54)
        ])
    }
    
    func changeLightButtonTitle(title: String) {
        setTitle(title, for: .normal)
    }
    
//    private func setupAction(vc: UIViewController) {
//        let backAction = UIAction { _ in
//            vc.navigationController?.popViewController(animated: true)
//        }
//        self.addAction(backAction, for: .touchUpInside)
//    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
