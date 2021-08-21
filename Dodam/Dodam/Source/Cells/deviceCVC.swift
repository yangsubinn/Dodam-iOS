//
//  deviceCVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/21.
//

import UIKit

class deviceCVC: UICollectionViewCell {
    static let identifier = "deviceCVC"
    
    // MARK: - Properties
    var deviceImage = UIImageView()
    
    // MARK: - Life Cycles
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // cell은 init에서 custom method 넣어서 적용됨
        configUI()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Custom Method
    private func configUI() {
        
        deviceImage.backgroundColor = .clear
    }
    
    private func setupLayout() {
        addSubview(deviceImage)
        
        deviceImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(68)
        }
    }
}
