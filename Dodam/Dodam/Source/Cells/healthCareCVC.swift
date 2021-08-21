//
//  healthCareCVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/21.
//

import UIKit

class healthCareCVC: UICollectionViewCell {
    static let identifier = "healthCareCVC"
    
    // MARK: - Properties
    var titleLabel = UILabel()
    var numberLabel = UILabel()
    var unitLabel = UILabel()
    
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
        
        titleLabel.text = "제목"
        numberLabel.text = "숫자"
        unitLabel.text = "단위"
        
        titleLabel.font = .systemFont(ofSize: 15, weight: .medium)
        numberLabel.font = .enBoldSystemFont(ofSize: 26)
        unitLabel.font = .systemFont(ofSize: 13, weight: .regular)
        
        titleLabel.textColor = .mainBlue
        numberLabel.textColor = .orange
        unitLabel.textColor = .mainBlue
    }
    
    private func setupLayout() {
        addSubviews([titleLabel, numberLabel, unitLabel])
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(22)
            make.leading.equalToSuperview().offset(16)
        }
        
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(7)
            make.leading.equalToSuperview().offset(16)
        }
        
        unitLabel.snp.makeConstraints { make in
            make.bottom.equalTo(numberLabel.snp.bottom)
            make.leading.equalTo(numberLabel.snp.trailing).offset(2)
        }
    }
}
